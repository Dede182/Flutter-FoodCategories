import 'dart:math';

import 'package:basic/Components/luckSpin.dart';
import 'package:basic/Components/luckyinput.dart';
import 'package:basic/LuckyDraw/luckyspinData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LuckspinForm extends StatefulWidget {
  const LuckspinForm({super.key});

  @override
  State<LuckspinForm> createState() => _LuckspinFormState();
}

class _LuckspinFormState extends State<LuckspinForm> {
  List<LuckSpinItem> itemCollection = LuckSpinItemArray().luckSpinItemArray;
  bool gameRule = true;
  int coin = 10;
  int betCoin = 0;
  int resultCoin = 0;
  String coinValidation = "";
  String spinMessage = "";
  String spinStatus = "";
  double fullWidth = double.infinity;
  List spin = [3, 2, 1];
  List<Map<String, List<int>>> winPattern = LuckySpinFunction.luckySpinPatter();

  //this function is for the rest the game
  void resetGame() {
    setState(() {
      coin = 10;
      betCoin = 0;
      resultCoin = 0;
      coinValidation = "";
      spinMessage = "Game has been restarted !";
      spinStatus = "win";
      spin = [3, 2, 1];
    });
  }

  void checkSpinWin(label) {
    label == 'jackpot'
        ? resultCoin = betCoin * 10
        : label == 'good'
            ? resultCoin = betCoin * 5
            : resultCoin = betCoin * 3;

    coin = coin + resultCoin;
  }

  void playSpin() {
    setState(() {
      spin = LuckySpinFunction.generateSpin(itemCollection);

      bool isWin = false;
      for (var pattern in winPattern) {
        String label = pattern.keys.first;
        List<int> patternList = pattern.values.first;

        if (spin.every((element) => patternList.contains(element))) {
          isWin = true;
          spinMessage = "You Hit the $label";
          spinStatus = 'win';

          checkSpinWin(label);

          break;
        }
      }
      if (!isWin) {
        spinMessage = "Unlucky, Try Again";
        spinStatus = 'lose';
        resultCoin = betCoin;
        if (coin > betCoin) {
          betCoin = betCoin;
          coin = coin - betCoin;
        } else {
          betCoin = 0;
        }
      }
    });
  }

  void invalidCoin(int inputCoin, message) {
    if (inputCoin > coin) {
      coinValidation = message;
    }

    //check input coin is less than or equal to coin and add to betCoin
    if (inputCoin <= coin) {
      //if betCoin already exist and if exists add inputCoin to betCoin
      if (betCoin > 0) {
        betCoin = inputCoin + betCoin;
      } else {
        betCoin = inputCoin;
      }
      //deduct inputCoin from coin
      coin = coin - inputCoin;
      coinValidation = "";
    }
  }

  void changeCoin(value) {
    setState(() {
      int inputCoin = int.parse(value);

      String message =
          "You don't have enough coin! If your coin is empty Restart the game to refill coin and enjoy";

      //check input coin is greater than coin and show error message
      invalidCoin(inputCoin, message);
    });
  }

  void resetBet() {
    setState(() {
      coin = coin + betCoin;
      betCoin = 0;
    });
  }

  void changeRule() {
    setState(() {
      gameRule = !gameRule;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(),
        body: Container(
      color: Colors.black87,
      width: fullWidth,
      height: fullWidth,
      padding: EdgeInsets.only(top: 20),
      child: Column(children: [
        //this widget show the user's coin
        Container(
            child: RuleButton(
          label: "Game Rules",
          fn: changeRule,
          width: 120,
        )),
        if (gameRule) GameRules(),
        Coin(
          coin: coin,
          status: spinStatus,
          resultCoin: resultCoin,
        ),

        //this widget show the spin message
        SpinStatus(
          spinMessage: spinMessage,
          spinStatus: spinStatus,
        ),

        //this widget  show the spin row
        SpinRow(
          spin: spin,
          itemCollection: itemCollection,
        ),
        LuckInput(
          change: changeCoin,
          coinValidation: coinValidation,
          betCoin: betCoin,
          resetBet: resetBet,
        ),
        //This the play spin and reset the game section
        PlaySection(play: playSpin, resetGame: resetGame)
      ]),
    ));
  }
}
