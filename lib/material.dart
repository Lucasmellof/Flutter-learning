import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello title",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hellow"),
        ),
        body: const Center(
          child: Text(
            "Helloworld",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 32,
              color: Colors.deepPurpleAccent
            ),
          ),
        ),
      ),
    );
  }

}