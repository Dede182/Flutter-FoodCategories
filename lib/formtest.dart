import 'package:flutter/material.dart';

class formtest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    //for organizing formWidget
    return Scaffold(
      appBar: AppBar(title: Text("Form test")),
      body: Container(
        child: Column(children: [
          //name row start
          Row(
            children: [
              Container(
                width: 200,
                child: Text("name"),
              ),
              Container(
                width: 100,
                child: TextField(),
              )
            ],
          ),
          Container(
            child: ElevatedButton(
              onPressed: printInfo,
              child: Text('click'),
            ),
          )
        ]),
      ),
    );
  }

  void printInfo() {
    print("I am Alien");
  }
}
