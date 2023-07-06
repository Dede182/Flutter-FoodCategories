import 'dart:js_interop';

import 'package:flutter/material.dart';

class LuckInput extends StatelessWidget {
  // TextEditingController? value;
  Function change;
  Function resetBet;
  String coinValidation;
  int betCoin;
  LuckInput(
      {required this.change,
      required this.coinValidation,
      required this.betCoin,
      required this.resetBet});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Row(
            //LuckInput is a custom widget
            children: [
              Flexible(
                  child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                  top: 10,
                ),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    if (coinValidation != "")
                      Container(
                        margin: const EdgeInsets.only(top: 15, bottom: 25),
                        child: Text(
                          "$coinValidation",
                          style: const TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            onSubmitted: (value) {
                              change(value);
                            },
                            decoration: const InputDecoration(
                              hintText: "Enter your bet",
                              hintStyle: TextStyle(color: Colors.white30),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.yellow,
                                    style: BorderStyle.solid),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.yellow,
                                    style: BorderStyle.solid),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Bet Coin: ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "$betCoin",
                                style: const TextStyle(
                                    color: Colors.yellow,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.yellow)),
                              onPressed: () {
                                resetBet();
                              },
                              child: const Text(
                                'Undo Bet',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ))
            ]));
  }
}

class Coin extends StatelessWidget {
  int coin;
  String status;
  int resultCoin;
  Coin({required this.coin, required this.status, required this.resultCoin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 10),
      padding: EdgeInsets.only(right: 10),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: status == 'win' && resultCoin > 0
                ? Text(
                    "+ $resultCoin coins added ",
                    style: const TextStyle(
                        color: Colors.green,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                : status == 'lose' && resultCoin > 0
                    ? Text(
                        "- $resultCoin coins lost",
                        style: const TextStyle(
                            color: Colors.red,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    : Text(""),
          ),
          Image.asset(
            'assets/images/luckspin/coin.png',
            scale: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "$coin",
              style: const TextStyle(
                  color: Colors.yellow,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
