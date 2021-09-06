import 'package:flutter/material.dart';
import 'package:navigation_dot_bar/navigation_dot_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatefulWidget {
  final String idUser;
  BottomNavBar({this.idUser});

  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  Widget callPage(int current) {
    switch (current) {
      case 0:
        return Home();
        break;
      case 1:
        return new Category();
        break;
      case 2:
        return new Favorite();
        break;
      case 3:
        return new Profile();
        break;
      default:
        return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: callPage(currentIndex),
      bottomNavigationBar: BottomNavigationDotBar(
          activeColor: Color(0xFF928CEF),
          color: Colors.black26,
          items: <BottomNavigationDotBarItem>[
            BottomNavigationDotBarItem(
                icon: FontAwesomeIcons.home,
                onTap: () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
                iconSize: 30),
            BottomNavigationDotBarItem(
                icon: FontAwesomeIcons.user,
                onTap: () {
                  setState(() {
                    currentIndex = 1;
                  });
                },
                iconSize: 30),
            BottomNavigationDotBarItem(
                icon: FontAwesomeIcons.fileAlt,
                onTap: () {
                  setState(() {
                    currentIndex = 2;
                  });
                },
                iconSize: 30),
            BottomNavigationDotBarItem(
                icon: FontAwesomeIcons.userAlt,
                onTap: () {
                  setState(() {
                    currentIndex = 3;
                  });
                },
                iconSize: 30),
          ]),
    );
  }
}
