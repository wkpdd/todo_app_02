import 'package:flutter/material.dart';
import 'package:todo_app_02/screens/tasks_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String routeName = "/splash";
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _goToTasksScreen();
  }

  _goToTasksScreen() => Future.delayed(Duration(seconds: 2)).then((value) =>
      Navigator.pushNamedAndRemoveUntil(
          context, TasksScreen.routeName, (route) => false));

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        "Todo App",
        style: TextStyle(
            fontFamily: "FiraCode", fontWeight: FontWeight.bold, fontSize: 20),
      )),
    );
  }
}
