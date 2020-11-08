import 'package:flutter/material.dart';
import 'package:mi_card/models/tasks_data.dart';
import 'package:mi_card/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskName: task.name,
              isChecked: task.done,
              checkBoxCallBack: (bool checkedState) {
                taskData.updateTask(task);
              },
              onLongPress: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
