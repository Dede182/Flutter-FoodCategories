import 'package:basic/Components/uiinput.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskUi extends StatelessWidget {
  final Function displayAll;
  final Function addTask;

  TextEditingController taskName = TextEditingController();
  TextEditingController taskDescription = TextEditingController();
  TextEditingController taskStatus = TextEditingController();

  TaskUi({required this.displayAll, required this.addTask});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(children: [
        //name row start
        UiInput(label: "Task Name", value: taskName),
        UiInput(label: "Task Description", value: taskDescription),
        UiInput(label: "Task Status", value: taskStatus),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, right: 30),
              child: ElevatedButton(
                onPressed: () {
                  String name = taskName.text.toString() ?? "";
                  String description = taskDescription.text.toString() ?? "";
                  String status = taskStatus.text.toString() ?? "";
                  addTask(
                      taskName: name,
                      taskDescription: description,
                      taskStatus: status);

                  //after added task Input will be reset to empty state
                  taskName.text = "";
                  taskDescription.text = "";
                  taskStatus.text = "";
                },
                child: Text('Add Test'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 30),
              child: ElevatedButton(
                onPressed: () {
                  displayAll();
                },
                child: Text('Display All'),
              ),
            )
          ],
        )
      ]),
    );
  }
}
