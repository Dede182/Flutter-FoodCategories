import 'package:flutter/material.dart';

/**
 * Htet shine htwe
 * to show naem text field and label as single widget
 */

class NameTextField extends StatelessWidget {
  String? labelText;
  String? buttonText;
  String? textFieldText;
  bool? labelDisplay;
  late Function onButtonClick;
  NameTextField(
      {this.labelText,
      this.buttonText,
      this.textFieldText,
      this.labelDisplay,
      required this.onButtonClick});
  TextEditingController tex = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        //name row start
        Row(
          children: [
            labelDisplay == null
                ? Container(
                    width: 200,
                    child: Text(labelText.toString() == 'null' ||
                            labelText.toString() == ''
                        ? 'Default Text Value'
                        : labelText.toString()),
                  )
                : labelDisplay == true
                    ? Container(
                        width: 200,
                        child: Text(labelText.toString() == 'null' ||
                                labelText.toString() == ''
                            ? 'Default Text Value'
                            : labelText.toString()),
                      )
                    : Container(),
            Container(
              width: 100,
              child: TextField(
                controller: tex,
              ),
            )
          ],
        ),
        Container(
          child: ElevatedButton(
            onPressed: () {
              onButtonClick(tex.text.toString());
            },
            child: Text(buttonText?.isEmpty != true
                ? 'Default Button Text'
                : buttonText.toString()),
          ),
        )
      ]),
    );
  }
}
