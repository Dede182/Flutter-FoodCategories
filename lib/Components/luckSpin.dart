import 'package:basic/LuckyDraw/luckyspinData.dart';
import 'package:flutter/material.dart';

class SpinRow extends StatelessWidget {
  final List spin;
  final List<LuckSpinItem> itemCollection;
  SpinRow({required this.spin, required this.itemCollection});
  double fullWidth = double.infinity;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10, bottom: 20),
        width: fullWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            for (var index in spin)
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow),
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  itemCollection[index - 1].imagePath,
                  width: 60,
                  height: 60,
                ),
              )
          ],
        ));
  }
}

class PlaySection extends StatelessWidget {
  double fullWidth = double.infinity;
  Function play;
  Function resetGame;
  PlaySection({required this.play, required this.resetGame});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: fullWidth,
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(top: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SpinButton(
          fn: play,
          label: "Play",
        ),
        SpinButton(
          fn: resetGame,
          label: "Reset Game",
        ),
      ]),
    );
  }
}

class SpinButton extends StatelessWidget {
  final Function fn;
  final String label;
  final double width;
  SpinButton({required this.fn, required this.label, this.width = 150});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size(width, 50)),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow)),
      onPressed: () {
        fn();
      },
      child: Text(
        label,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class RuleButton extends StatelessWidget {
  final Function fn;
  final String label;
  final double width;
  RuleButton({required this.fn, required this.label, this.width = 150});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size(width, 50)),
          backgroundColor:
              MaterialStateProperty.all<Color>(Colors.transparent)),
      onPressed: () {
        fn();
      },
      child: Text(
        label,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class SpinStatus extends StatelessWidget {
  final String spinStatus;
  final String spinMessage;
  SpinStatus({required this.spinStatus, required this.spinMessage});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 30),
      child: spinStatus == 'win'
          ? Text(
              "$spinMessage",
              style: const TextStyle(
                  color: Colors.green,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            )
          : Text(
              "$spinMessage",
              style: const TextStyle(
                  color: Colors.orange,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
    );
  }
}

class GameRules extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 40),
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GameRuleText(text: "You will get 10 coins at the start of the game"),
          GameRuleText(
            text:
                "If spins are in row of gold ,you will get the 10 times of your bet",
            color: Colors.green,
          ),
          GameRuleText(
            text:
                "If spins are in row of skull ,you will get the 5 times of your bet",
            color: Colors.green,
          ),
          GameRuleText(
            text:
                "If spins are in row of seven ,you will get the 3 times of your bet",
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

class GameRuleText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  GameRuleText(
      {required this.text, this.color = Colors.white54, this.size = 14});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 3),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.white12,
          border: Border.all(width: 2),
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: size),
      ),
    );
  }
}
