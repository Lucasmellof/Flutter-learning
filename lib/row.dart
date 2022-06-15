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
      darkTheme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Colors.amber,
        brightness: Brightness.dark,
        backgroundColor: const Color(0xFF212121),
        dividerColor: Colors.black,
      ),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryColor: Colors.white,
        brightness: Brightness.light,
        backgroundColor: const Color(0xFFE5E5E5),
        accentColor: Colors.black,
        accentIconTheme: IconThemeData(color: Colors.white),
        dividerColor: Colors.white54,
      ),
      themeMode: ThemeMode.dark,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hellow"),
        ),
        body: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.star,
                color: Colors.purple[500],
              ),
              const Icon(Icons.star, color: Colors.black),
              Icon(
                Icons.star,
                color: Colors.purple[500],
              ),
              const Icon(Icons.star, color: Colors.black),
              Icon(Icons.star, color: Colors.purple[500]),
            ],
          ),
        ),
      ),
    );
  }
}
