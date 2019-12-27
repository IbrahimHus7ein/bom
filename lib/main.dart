import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int _selectedPage = 0;
  final _pages = [
    Center(
      child: Text("welcome")
    ),
    Center(
        child: Text("welcome 2")
    ),
    Center(
        child: Text("welcome 3")
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: _pages[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (int index)
        {
          setState(() {
            _selectedPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("saerch")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("profil")
          ),
        ],
      ),
    );


  }
}
