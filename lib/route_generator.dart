import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app_02/screens/splash_screen.dart';
import 'package:todo_app_02/screens/tasks_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case SplashScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case TasksScreen.routeName:
        return MaterialPageRoute(builder: (_) => const TasksScreen());
      default:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }
}
