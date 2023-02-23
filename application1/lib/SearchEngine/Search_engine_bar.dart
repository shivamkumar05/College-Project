import 'package:flutter/material.dart';

import 'newScreen.dart';


class SearchEnfineBar extends StatefulWidget {
  const SearchEnfineBar({super.key});

  @override
  State<SearchEnfineBar> createState() => _SearchEnfineBarState();
}

class _SearchEnfineBarState extends State<SearchEnfineBar> {
  TextEditingController searchController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KHOZ"),
      ),
      body: Container(
              //Search Wala Container

              padding: EdgeInsets.symmetric(horizontal: 8),
              margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(24)),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      if ((searchController.text).replaceAll(" ", "") == "") {
                        print("Blank search");
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewScreen(
                                      querySearch: searchController.text,
                                    )));
                      }
                    },
                    child: Container(
                      child: Icon(
                        Icons.search,
                        color: Colors.blueAccent,
                      ),
                      margin: EdgeInsets.fromLTRB(3, 0, 7, 0),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: searchController,
                      textInputAction: TextInputAction.search,
                      onSubmitted: (value) {
                        //value store input of searchBar
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewScreen(
                                      querySearch: value,
                                    )));
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Search Here"),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}