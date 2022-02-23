import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_02/classes/task_class.dart';
import 'package:todo_app_02/providers/task_provider.dart';

class TaskTile extends StatelessWidget {
  final TTask task;
  final Function toggleState;
  const TaskTile({required this.task, required this.toggleState, Key? key})
      : super(key: key);

  _onChanged(bool v) {
    print(v);
    toggleState(v);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.task.toString(),
        style: TextStyle(
          decoration:
              task.completed ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        value: task.completed,
        onChanged: (v) => _onChanged(v!),
      ),
    );
  }
}
