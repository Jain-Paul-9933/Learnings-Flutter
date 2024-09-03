import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DisplayText(
          counterText: _counter.toString(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print(_counter);
            setState(() {
              _counter = _counter + 1;
            });
          }),
    );
  }
}

class DisplayText extends StatelessWidget {
  final String counterText;

  const DisplayText({super.key, required this.counterText});

  @override
  Widget build(BuildContext context) {
    return Text(
      counterText,
      style: TextStyle(fontSize: 50),
    );
  }
}
