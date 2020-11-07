class Task {
  String name;
  bool done;

  Task({this.name, this.done = false});

  void toggleDone() {
    done = !done;
  }
}
