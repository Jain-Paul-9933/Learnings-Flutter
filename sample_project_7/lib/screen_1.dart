import 'package:flutter/material.dart';
import 'package:sample_project_7/screen_2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenOne extends StatelessWidget {
  ScreenOne({super.key});

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    getSavedData(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: _textController,
              ),
              ElevatedButton(
                onPressed: () {
                  saveDataToStorage();
                },
                child: Text(
                  'Save value',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> saveDataToStorage() async {
    print(_textController.text);

    //Shared Preference

    final sharedPrefs = await SharedPreferences.getInstance();

    // Save value

    await sharedPrefs.setString('saved_value', _textController.text);
  }

  Future<void> getSavedData(BuildContext context) async {
    final sharedPreferences = await SharedPreferences.getInstance();

    final savedValue = sharedPreferences.getString('saved_value');

    if (savedValue != null) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => ScreenOne()));
    }
  }
}
