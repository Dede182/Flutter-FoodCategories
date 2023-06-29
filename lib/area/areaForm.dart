import 'package:basic/area/areaUi.dart';
import 'package:flutter/material.dart';

class AreaForm extends StatelessWidget {
  calculateArea({required double width, required double height}) =>
      print(width * height);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    //for organizing formWidget
    return Scaffold(
        appBar: AppBar(title: Text("Form test")),
        body: Column(
          children: [
            AreaUi(
              calculateArea: calculateArea,
            )
          ],
        ));
  }

  void printInfo(textValue) {
    print("what user type is ${textValue}");
  }
}
