import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskName;
  final Function checkBoxCallBack;
  final Function onLongPress;

  const TaskTile(
      {this.isChecked, this.taskName, this.checkBoxCallBack, this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskName,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
        onChanged: checkBoxCallBack,
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
      ),
      onLongPress: onLongPress,
    );
  }
}
