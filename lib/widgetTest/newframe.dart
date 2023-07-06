import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewFrame extends StatefulWidget {
  const NewFrame({super.key});

  @override
  State<NewFrame> createState() => _NewFrameState();
}

class _NewFrameState extends State<NewFrame> {
  String? text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          width: double.infinity,
          child: Row(
            children: [
              Text('$text'),
              Flexible(
                  child: TextField(
                onSubmitted: (value) => setState(() => text = value),
              ))
            ],
          ),
        ));
  }
}
