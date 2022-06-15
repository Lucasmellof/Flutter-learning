import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 75, 80, 230),
        Color.fromARGB(255, 226, 80, 229)
      ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
      child: const Center(
        child: Text("Hello World", textDirection: TextDirection.ltr, style: TextStyle(fontSize: 32, color: Colors.amber),),
      ),
    );
  }
}
