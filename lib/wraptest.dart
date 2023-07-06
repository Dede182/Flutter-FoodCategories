import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class WrapTest extends StatelessWidget {
  const WrapTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
      children: [
        CircularPercentIndicator(
          radius: 60.0,
          lineWidth: 5.0,
          percent: 1.0,
          center: new Text("100%"),
          progressColor: Colors.red,
        ),
        CircularPercentIndicator(
          radius: 130.0,
          animation: true,
          animationDuration: 1200,
          lineWidth: 15.0,
          percent: 0.4,
          center: new Text(
            "40 hours",
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          circularStrokeCap: CircularStrokeCap.butt,
          backgroundColor: Colors.yellow,
          progressColor: Colors.red,
        ),
      ],
    )));
  }
}
