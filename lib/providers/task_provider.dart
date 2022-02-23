import 'package:flutter/cupertino.dart';
import 'package:todo_app_02/classes/task_class.dart';

class TaskProvider extends ChangeNotifier {
  List<TTask> tasks = [];
  addNewTask(TTask task) {
    print(task);
    tasks.add(task);
    notifyListeners();
  }

  toggleFinishTaskState(int id) {
    print(tasks);
    tasks[id].completed = !tasks[id].completed;
    notifyListeners();
  }
}
