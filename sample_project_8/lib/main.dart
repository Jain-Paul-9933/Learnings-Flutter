import 'package:flutter/material.dart';
import 'package:sample_project_8/screens/splash.dart';

const SAVE_KEY_NAME = 'UserLoggedIn';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Sample',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // Button background color
            foregroundColor: Colors.white, // Button text color
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            textStyle: const TextStyle(fontSize: 12),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.blue, // Text button color
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue, // AppBar background color
          foregroundColor: Colors.white, // AppBar text/icon color
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Title text color
          ),
          elevation: 4, // Shadow under the AppBar
          centerTitle: true, // Center the title
          iconTheme: IconThemeData(
            color: Colors.white, // Icon color
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
