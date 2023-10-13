import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
              Navigator.pop(context);
          },
          child: Text("Screen 2"),
        ),
        )
    );
  }
}
