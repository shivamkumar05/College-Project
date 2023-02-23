import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  String querySearch;
  NewScreen({required this.querySearch});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KHOZ"),
      ),
      body: Center(
        child: Text("Kr le search bsdk"),
      ),
    );
  }
}
