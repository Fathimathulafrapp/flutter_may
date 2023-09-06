import 'package:flutter/material.dart';
import 'package:flutter_may/movie%20app/save.dart';
import 'package:flutter_may/movie%20app/savedd.dart';
import 'package:flutter_may/movie%20app/searchpage.dart';


/// Flutter code sample for [BottomNavigationBar].

void main() => runApp(const BottomNavigationBarExampleApp());

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  static  List<Widget> _widgetOptions = <Widget>[
    searched(),
    searched(),

    savedd(),
    savedd(),
    save(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.grey[850],
        selectedItemColor: Colors.white,

        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add_home_outlined),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark_border),label: "Saved"),
          BottomNavigationBarItem(icon: Icon(Icons.download_sharp),label: "Downloads"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: "Me"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
