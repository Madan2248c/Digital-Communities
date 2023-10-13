import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 7;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Lottery App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Center(child: Text("Lottery Winning Number is $x")),
              Text(x>5 ? "X is greater than 5" : x.toString()),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("object");
          },
          child: Icon(Icons.refresh),

        ),
      ),
    );
  }
}
