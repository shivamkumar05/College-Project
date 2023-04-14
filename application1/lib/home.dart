import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 56, 105, 142),
        title: GestureDetector(
          child: Row(
            children: [
              Flexible(
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Search for web...',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.mic),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
