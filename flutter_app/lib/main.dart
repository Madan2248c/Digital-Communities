import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          //backgroundColor: Colors.red,
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: const Text("My app",style: TextStyle(fontFamily: 'Pacifico'),),
          ),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Madan"),
                    SizedBox(
                      width: 15,
                    ),
                    Text("Gopal"),
                  ],
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                  child: const Center(child: Text("Conatiner 1")),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                  child: const Center(child: Text("Conatiner 2")),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                  child: const Center(child: Text("Conatiner 3")),
                ),
              ],
            ),
          ),
        )
    );
  }
}
