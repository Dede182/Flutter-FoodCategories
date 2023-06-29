import 'package:basic/task/task.dart';
import 'package:basic/task/taskui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskForm extends StatelessWidget {
  List<Task> taskCollection = [];
  List<int> taskIds = [];

  // this function will pluck the id of the taskCollection
  List<int> getTaskIds() {
    return taskIds = taskCollection.map((task) => task.taskId).toList();
  }

  //this function check the id of the task to avoid Id duplication
  int checkId() {
    int id;
    getTaskIds();
    if (taskIds.isEmpty) {
      id = 1;
    } else {
      int maxId =
          taskIds.reduce((value, element) => value > element ? value : element);
      id = maxId + 1;
    }
    return id;
  }

  // this function take action to add task to Task Collection
  void addTask({
    required String taskName,
    required String taskStatus,
    required String taskDescription,
  }) {
    try {
      int id = checkId();
      Task newTask = Task(
        taskId: id,
        taskName: taskName,
        taskDescription: taskDescription,
        taskStatus: taskStatus,
      );
      taskCollection.add(newTask);
      print('Added task: $taskName,$taskDescription , $taskStatus');
    } catch (e) {
      print('Some thing was wrong');
    }
  }

  //this function will display of task collection
  void displayAll() {
    print('\nId   Name   Description     Status\n'
        '------------------------------------------');
    taskCollection.forEach((col) => print(
        '${col.taskId.toString().padRight(3)} ${col.taskName.padRight(6)} ${col.taskDescription.toString().padRight(8)} ${col.taskStatus}'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task Implemetation")),
      body: Container(
        padding: EdgeInsets.only(top: 40),
        child: TaskUi(displayAll: displayAll, addTask: addTask),
      ),
    );
  }
}
