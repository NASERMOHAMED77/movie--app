// ignore_for_file: prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:moviapp/viewmodel/screens/favmoviespage.dart';
import 'package:moviapp/viewmodel/screens/homepage.dart';
import 'package:moviapp/viewmodel/screens/searchpage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var moviename = TextEditingController();
  List<Widget> items = [
    Icon(Icons.search),
    Icon(Icons.home),
    Icon(Icons.favorite_border)
  ];
  int currentindex = 1;
  List<Widget> screens = [
    SearchPage(),
    HomePage(),
    FavMoviePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: IconThemeData(color: Colors.white)),
        child: CurvedNavigationBar(
          index: currentindex,
          items: items,
          onTap: (value) {
            setState(() {
              currentindex = value;
            });
          },
          animationCurve: Curves.easeInOut,
          height: 50,
          color: Colors.amber,
          buttonBackgroundColor: Colors.amber,
          animationDuration: Duration(milliseconds: 300),
          backgroundColor: Colors.transparent,
        ),
      ),

      extendBody: true,
      body: screens[currentindex],

      // bottomNavigationBar: BottomNavigationBar(
      //     currentIndex: currentindex,
      //     showSelectedLabels: true,
      //     selectedItemColor: Colors.amber,
      //     unselectedItemColor: Colors.black,
      //     onTap: (value) {
      //       currentindex = value;
      //       setState(() {});
      //       print(value);
      //     },
      //     items: [
      //       BottomNavigationBarItem(icon: items[0], label: 'd'),
      //       BottomNavigationBarItem(icon: items[1], label: 'c'),
      //       BottomNavigationBarItem(icon: items[2], label: 'l'),
      //     ]),
    );
  }
}
