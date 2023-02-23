import 'package:application1/news/news_home.dart';
import 'package:flutter/material.dart';
import 'Search_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DemoApp",
      home: Home(),
    );
  }
}
