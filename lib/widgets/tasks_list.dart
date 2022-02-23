import 'package:flutter/material.dart';
import 'package:todo_app_02/classes/task_class.dart';
import 'package:todo_app_02/providers/task_provider.dart';
import 'package:todo_app_02/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatefulWidget {
  final List<TTask> tasks;
  const TasksList(this.tasks, {Key? key}) : super(key: key);

  @override
  _TasksListState createState() => _TasksListState(tasks);
}

class _TasksListState extends State<TasksList> {
  final List<TTask> tasks;
  _TasksListState(this.tasks);
  @override
  Widget build(BuildContext context) =>
      context.read<TaskProvider>().tasks.isEmpty
          ? Container()
          : ListView.builder(
              itemCount: tasks.length,
              itemBuilder: ((context, index) {
                return TaskTile(
                    task: tasks[index],
                    toggleState: (v) {
                      tasks[index].completed = v;
                      setState(() {});
                    });
              }));
}
