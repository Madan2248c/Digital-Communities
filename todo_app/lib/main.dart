import 'package:flutter/material.dart';
import 'dart:convert';

void main() {
  runApp(const MYAPP());
}

class MYAPP extends StatefulWidget {
  const MYAPP({Key? key}) : super(key: key);

  @override
  State<MYAPP> createState() => _MYAPPState();
}

class _MYAPPState extends State<MYAPP> {
  int x = 5;
  List<String> greetings = [];
  @override
  void initState() {
    super.initState();
    _loadGreetings();
  }

  // Function to load greetings from the JSON file.
  void _loadGreetings() async {
    String jsonString = await DefaultAssetBundle.of(context)
        .loadString('lib/assets/files/data.json');
    Map<String, dynamic> jsonData = jsonDecode(jsonString);
    setState(() {
      greetings = List<String>.from(jsonData['greetings']);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Todo App"),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Title",
                      prefixIcon: const Icon(Icons.work),
                      fillColor: Colors.grey[500],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      x = x + 1;
                      print(x);
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  child: const Text(
                    "Add",
                    style: TextStyle(color: Colors.black38),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: greetings.length,
                itemBuilder: (context, index) {
                  return Text(greetings[index]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
