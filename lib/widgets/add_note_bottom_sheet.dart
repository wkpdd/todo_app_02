import 'package:flutter/material.dart';
import 'package:todo_app_02/classes/task_class.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_02/providers/task_provider.dart';

class AddNoteBottomSheet extends StatefulWidget {
  final Function(TTask) func;
  const AddNoteBottomSheet({required this.func, Key? key}) : super(key: key);

  @override
  _AddNoteBottomSheetState createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  @override
  Widget build(BuildContext context) {
    String taskss = "";
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      padding: const EdgeInsets.all(20),
      child: Form(
        child: Column(
          children: [
            const Text(
              "Add Task",
              style: TextStyle(
                fontFamily: "FiraCode",
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              onChanged: (v) => taskss = v,
              style: const TextStyle(
                  color: Colors.lightBlue, fontFamily: "FiraCode"),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              style: TextButton.styleFrom(
                  primary: Colors.white, backgroundColor: Colors.lightBlue),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Center(
                      child: Text(
                    "Add",
                    style: TextStyle(fontFamily: "FiraCode", fontSize: 16),
                  ))),
              onPressed: () {
                TTask task = TTask(
                    id: context.read<TaskProvider>().tasks.length,
                    task: taskss,
                    completed: false);
                widget.func(task);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
