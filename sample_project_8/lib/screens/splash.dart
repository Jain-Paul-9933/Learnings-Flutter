import 'package:flutter/material.dart';
import 'package:sample_project_8/main.dart';
import 'package:sample_project_8/screens/home.dart';
import 'package:sample_project_8/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    checkUserLoggedIn();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/images/flutter_webinar_logo.webp',
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Welcome to Flutter',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> goToLogin() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (ctx) => LoginScreen()));
  }

  Future<void> checkUserLoggedIn() async {
    final _sharedPrefs = await SharedPreferences.getInstance();
    final _userLoggedIn = _sharedPrefs.getBool(SAVE_KEY_NAME);

    if (_userLoggedIn == null || _userLoggedIn == false) {
      goToLogin();
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (ctx) => HomeScreen(),
        ),
      );
    }
  }
}
