import 'package:flutter/material.dart';
import 'package:mi_card/models/Task.dart';
import 'package:mi_card/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  TaskList({this.tasks});

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
          taskName: widget.tasks[index].name,
          isChecked: widget.tasks[index].done,
          checkBoxCallBack: (bool checkedState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
