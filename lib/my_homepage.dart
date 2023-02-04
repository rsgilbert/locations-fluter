import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({ super.key });

  @override 
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  int _index = 0;

  @override 
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _index,
      onTap: (newIndex) {
        setState(() {
          _index = newIndex;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration),
          label: "Compass"),
        BottomNavigationBarItem(
          icon: Icon(Icons.punch_clock_sharp),
          label: "Clock")
      ]
    );
  }
}