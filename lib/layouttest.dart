import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('this is ttitle')),
        body: Column(
          children: [
            Text(
              "it is Row Alignment Test",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 11),
            ),
            //Row layout test
            Container(
              height: 200,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      color: Colors.red.shade500,
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      color: Colors.cyan.shade500,
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      color: Colors.yellow.shade500,
                    ),
                  ]),
            ),

            //Column layout test
            Text(
              "it is Column Alignment Test",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 11),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      color: Colors.red.shade500,
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      color: Colors.cyan.shade500,
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      color: Colors.yellow.shade500,
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
