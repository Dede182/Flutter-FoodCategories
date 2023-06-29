import 'package:basic/Components/uiinput.dart';
import 'package:basic/task/taskui.dart';
import 'package:flutter/material.dart';

/**
 * Htet shine htwe
 * Area Ui class controls the ui of area form
 */

class AreaUi extends StatelessWidget {
  late Function calculateArea;
  AreaUi({required this.calculateArea});

  //variables declared here will pass to the UiInput as parameters
  TextEditingController widthValue = TextEditingController();
  TextEditingController heightValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        //name row start
        UiInput(label: "Width", value: widthValue),
        UiInput(label: "Height", value: heightValue),

        Container(
          margin: EdgeInsets.only(top: 20),
          child: ElevatedButton(
            onPressed: () {
              final double width = double.parse(widthValue.text) ?? 0;
              final double height = double.parse(heightValue.text) ?? 0;
              calculateArea(width: width, height: height);
            },
            child: Text('calculate'),
          ),
        )
      ]),
    );
  }
}
