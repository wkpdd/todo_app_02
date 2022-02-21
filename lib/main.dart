import 'package:flutter/material.dart';
import 'package:todo_app_02/route_generator.dart';
import 'package:todo_app_02/screens/splash_screen.dart';

void main() => runApp(const MaterialApp(
    initialRoute: SplashScreen.routeName,
    onGenerateRoute: RouteGenerator.generateRoute));
