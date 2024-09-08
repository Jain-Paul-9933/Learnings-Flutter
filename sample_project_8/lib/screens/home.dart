import 'package:flutter/material.dart';
import 'package:sample_project_8/screens/login.dart';
import 'package:sample_project_8/screens/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          IconButton(
            onPressed: () {
              signout(context);
            },
            icon: Icon(
              Icons.exit_to_app,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            "Home Screen",
          ),
        ),
      ),
    );
  }

  signout(BuildContext ctx) async {
    final _sharedPrefs = await SharedPreferences.getInstance();

    await _sharedPrefs.clear();
    Navigator.of(ctx).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (ctx) => LoginScreen(),
      ),
      (route) => false,
    );
  }
}
