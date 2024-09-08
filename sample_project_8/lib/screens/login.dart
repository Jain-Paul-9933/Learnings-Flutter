import 'package:flutter/material.dart';
import 'package:sample_project_8/main.dart';
import 'package:sample_project_8/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _userNameController = TextEditingController();

  final _passwordController = TextEditingController();

  bool _isDataMatched = true;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextFormField(
                  validator: (value) {
                    // if (_isDataMatched) {
                    //   return null;
                    // } else {
                    //   return 'Error';
                    // }
                    if (value == null || value.isEmpty) {
                      return 'Value is Empty';
                    } else {
                      return null;
                    }
                  },
                  controller: _userNameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Username'),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    // if (_isDataMatched) {
                    //   return null;
                    // } else {
                    //   return 'Error';
                    // }
                    if (value == null || value.isEmpty) {
                      return 'Value is Empty';
                    } else {
                      return null;
                    }
                  },
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Password'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Visibility(
                      visible: !_isDataMatched,
                      child: const Text(
                        "Username and password does not match",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    ElevatedButton.icon(
                      key: GlobalKey(),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          checkLogin(context);
                        } else {
                          print("Data empty");
                        }
                      },
                      label: const Text("Login"),
                      icon: const Icon(
                        Icons.check,
                        size: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void checkLogin(BuildContext ctx) async {
    final _username = _userNameController.text;
    final _password = _passwordController.text;

    if (_username == _password) {
      // Goto home page
      print("username and password match's");

      final _sharedPrefs = await SharedPreferences.getInstance();

      await _sharedPrefs.setBool(
        (SAVE_KEY_NAME),
        true,
      );
      Navigator.of(ctx).pushReplacement(
        MaterialPageRoute(
          builder: (ctx) => HomeScreen(),
        ),
      );
    } else {
      print("username and password doesn't match");
    }
  }
}
