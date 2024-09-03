import 'package:flutter/material.dart';

class ListviewSample extends StatelessWidget {
  const ListviewSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "List View Sample Project",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
          child: ListView.separated(
        itemBuilder: (ctx, index) {
          return ListTile(
            title: Text('PERSON $index'),
            subtitle: Text('message $index'),
            leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/flutter logo.jpg')),
            trailing: Text('10:00 AM'),
          );
        },
        separatorBuilder: (ctx, index) {
          return Divider();
        },
        itemCount: 30,
      )),
    );
  }
}
