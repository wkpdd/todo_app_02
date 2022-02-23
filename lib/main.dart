import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_02/providers/task_provider.dart';
import 'package:todo_app_02/route_generator.dart';
import 'package:todo_app_02/screens/splash_screen.dart';

void main() => runApp(const Aoo());

class Aoo extends StatelessWidget {
  const Aoo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => TaskProvider())],
        builder: (context, child) => const MaterialApp(
              initialRoute: SplashScreen.routeName,
              onGenerateRoute: RouteGenerator.generateRoute,
            ));
  }
}
