import 'package:flutter/material.dart';
import 'package:sample_project_5/screen_1.dart';
import 'package:sample_project_5/screen_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ScreenOne(),
      routes: {
        'screen_1': (ctx) {
          return ScreenOne();
        },
        'screen_2': (ctx) {
          return ScreenTwo();
        }
      },
    );
  }
}
