import 'dart:io';
import 'Helpfeedback.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'loginPage.dart';
import 'download.dart';
import 'AboutPage.dart';
import 'history.dart';
import 'package:firebase_core/firebase_core.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchPage(),
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

// settings ke liye hai class
class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  // Define variables to hold the user's preferred settings
  bool isDarkModeEnabled = false;
  String selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Add UI elements for enabling/disabling dark mode
          SwitchListTile(
            title: Text('Dark mode'),
            value: isDarkModeEnabled,
            onChanged: (value) {
              setState(() {
                isDarkModeEnabled = value;
              });
            },
          ),
          // Add UI elements for selecting a language
          ListTile(
            title: Text('Language'),
            trailing: DropdownButton<String>(
              value: selectedLanguage,
              onChanged: (newValue) {
                setState(() {
                  selectedLanguage = newValue!;
                });
              },
              items: ['English', 'Hindi', 'Spanish', 'French']
                  .map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          // Add UI elements for about Khoze and services
          GestureDetector(
            child: ListTile(
              title: Text('About Khoze'),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutPage()),
              );
            },
          ),
          ListTile(
            title: Text('Services'),
            onTap: () {
              // Navigate to the Services page
            },
          ),
        ],
      ),
    );
  }
}

class _SearchPageState extends State<SearchPage> {
  bool _isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.home),
        ),
        centerTitle: true,
        // title: const Text('KHOZ SEARCH ENGINE'),
        backgroundColor: const Color.fromARGB(255, 63, 33, 187),

        elevation: 1.0,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _isLoggedIn = !_isLoggedIn;
              });
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            icon: _isLoggedIn ? Icon(Icons.person) : Icon(Icons.person),
          ),
          PopupMenuButton<String>(
            onSelected: (String result) {
              if (result == 'Settings') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              } else if (result == 'Downloads') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DownloadOptionsPage()),
                );
              } else if (result == 'History') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HistoryPages()),
                );
              } else if (result == 'Help & feedback') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelpfeedPages()),
                );
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'New tab',
                child: ListTile(
                  leading: Icon(Icons.new_label),
                  title: Text('New tab'),
                ),
              ),
              const PopupMenuItem<String>(
                value: 'History',
                child: ListTile(
                  leading: Icon(Icons.history),
                  title: Text('History'),
                ),
              ),
              const PopupMenuItem<String>(
                value: 'Downloads',
                child: ListTile(
                  leading: Icon(Icons.download),
                  title: Text('Downloads'),
                ),
              ),
              // const PopupMenuItem<String>(
              //   // value: 'Bookmarks',
              //   child: ListTile(
              //     leading: Icon(Icons.bookmark),
              //     // title: Text('Bookmarks'),
              //   ),
              // ),
              const PopupMenuItem<String>(
                value: 'Desktop site',
                child: ListTile(
                  leading: Icon(Icons.desktop_mac),
                  title: Text('Desktop site'),
                ),
              ),
              const PopupMenuItem<String>(
                value: 'Settings',
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
              ),
              const PopupMenuItem<String>(
                value: 'Help & feedback',
                child: ListTile(
                  leading: Icon(Icons.help_center),
                  title: Text('Help & feedback'),
                ),
              ),
              const PopupMenuItem<String>(
                value: 'Logout',
                child: ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 40),
            Container(
              child: Image.asset(
                'assets/images/photo.png',
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 1),
            Flexible(
              child: TextField(
                style: const TextStyle(color: Colors.black),
                readOnly: true,
                decoration: InputDecoration(
                  filled: true,

                  // fillColor: const Color.fromARGB(255, 127, 109, 199),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 50.0,
                    ),
                  ),
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                  hintText: "Search for web,apps more...",
                  prefixIcon: const Icon(Icons.search, color: Colors.black),
                ),
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                }),
                onSubmitted: (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
