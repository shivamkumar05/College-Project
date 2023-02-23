import 'package:flutter/material.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class SarchBar extends StatefulWidget {
  SarchBar({super.key});

  @override
  State<SarchBar> createState() => _SarchBarState();
}

class _SarchBarState extends State<SarchBar> {
  final List<String> _suggestions = [
    'Afeganistan',
    'Albania',
    'Algeria',
    'Australia',
    'Brazil',
    'German',
    'Madagascar',
    'Mozambique',
    'Portugal',
    'Zambia'
  ];
  String searchValue = '';
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: EasySearchBar(
        //   title:  Text("DEMO"),
        //   onSearch: (value) => setState(() => searchValue = value),
        //   suggestions: _suggestions,
        // ),

        appBar: AppBar(
          title: Text("DEMO"),
          // actions: [
          //   IconButton(
          //     onPressed: () {},
          //     icon: Icon(Icons.search),
          //   )
          // ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            TextField(
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  hintText: "Search Here....",
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide())),
            ),
            SizedBox(
              height: 20,
            ),
            Text("hello"),
          ]),
        ),
      ),
    );
  }
}

