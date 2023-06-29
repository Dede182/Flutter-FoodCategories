import 'package:flutter/material.dart';
import 'nametextfield.dart';

class formtest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    //for organizing formWidget
    return Scaffold(
        appBar: AppBar(title: Text("Form test")),
        body: Column(
          children: [
            NameTextField(
              labelText: "UserName",
              onButtonClick: printInfo,
            ),
            NameTextField(
              labelDisplay: false,
              onButtonClick: printInfo,
              buttonText: "hi",
            ),
          ],
        ));
  }

  void printInfo(textValue) {
    print("what user type is ${textValue}");
  }
}
