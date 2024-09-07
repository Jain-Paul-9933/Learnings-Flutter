import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextFormField(
                controller: _userNameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Username'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Password'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                key: GlobalKey(),
                onPressed: () {
                  checkLogin(context);
                },
                label: const Text("Login"),
                icon: const Icon(Icons.check),
              )
            ],
          ),
        ),
      ),
    );
  }

  void checkLogin(BuildContext ctx) {
    final _username = _userNameController.text;
    final _password = _passwordController.text;

    if (_username == _password) {
      // Goto home page
    } else {
      final _errorMessage = "Username and password does not match";
      // Snackbar
      ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 10),
        backgroundColor: Colors.red,
        margin: const EdgeInsets.all(10),
        content: Text(_errorMessage),
      ));

      // Alert Dialog
      showDialog(
          context: ctx,
          builder: (ctx1) {
            return AlertDialog(
              title: Text("Error"),
              content: Text(_errorMessage),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(ctx1).pop();
                    },
                    child: Text('Close'))
              ],
            );
          });
      // Show Text

      
    }
  }
}
