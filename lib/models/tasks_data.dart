import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:mi_card/models/Task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Code Flutter'),
    Task(name: 'Redeem udacity course'),
    Task(name: 'Watch Star trek')
  ];

  int get taskCount {
    return _tasks.length;
  }

// for safety added un modifiable list
  UnmodifiableListView get tasks {
    return UnmodifiableListView(_tasks);
  }

  addNewTask(String taskName) {
    _tasks.add(Task(name: taskName));
    notifyListeners();
  }

  updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
