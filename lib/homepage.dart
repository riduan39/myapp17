import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:myapp17/pages/page%201.dart';
import 'package:myapp17/pages/page%203.dart';
import 'package:myapp17/pages/page%204.dart';
import 'package:myapp17/pages/pages%202.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _currentIndex=0;
  final pages=[
  page1(), page2(), page4(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
          color: Colors.lime,
          buttonBackgroundColor: Colors.pinkAccent,
          backgroundColor: Colors.white,
          animationCurve: Curves.bounceOut,
          animationDuration: Duration(microseconds: 700),
          height: 60,
          onTap: (index){
          setState(() {
            _currentIndex = index;
          });
          },
          items: [Icon(Icons.people),
            Icon(Icons.home),
            Icon(Icons.favorite,),
      ]),
      body: pages[
      _currentIndex
      ],
    ));
  }
}
