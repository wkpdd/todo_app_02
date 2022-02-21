import 'package:flutter/material.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);
  static const String routeName = "/tasks";
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  int numberOfTasks = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 70, bottom: 20, left: 50),
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Icon(
                    Icons.list,
                    color: Colors.lightBlue,
                    size: 40,
                  )),
              Container(
                margin: const EdgeInsets.only(bottom: 10, left: 50),
                child: const Text(
                  "Khedmoey",
                  style: TextStyle(
                      fontFamily: "FiraCode",
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 40, left: 50),
                child: Text(
                  "$numberOfTasks Sla7",
                  style: const TextStyle(
                      fontFamily: "FiraCode",
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Container(
                    width: size.width,
                    padding: EdgeInsets.only(top: 40, right: 40, left: 40),
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: TasksList()),
              )
            ]),
      ),
    );
  }
}

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(50, (index) => TaskTile()),
    );
  }
}

class TaskTile extends StatelessWidget {
  const TaskTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Test"),
      trailing: Checkbox(
        value: false,
        onChanged: ((value) {}),
      ),
    );
  }
}
