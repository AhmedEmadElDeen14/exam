import 'package:exam/moody.dart';
import 'package:exam/news.dart';
import 'package:exam/workout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NewsApp.routeName,
      routes: {
        MoodyApp.routeName:(context) => MoodyApp(),
        WorkoutApp.routeName:(context) => WorkoutApp(),
        NewsApp.routeName:(context) => NewsApp()
      },
    );
  }
}

