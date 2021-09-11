# Navigation Dot Bar

A Flutter library, which adds a BottomNavigationBar with a better style. Inspired by the application "Reflectly"
![20181111_230822](https://user-images.githubusercontent.com/22163898/48326755-02bf8480-e609-11e8-8825-b81750ea9dfc.gif)

## How to use it

#### Add the dependency to your project, by editing the pubspec.yaml file.
Null Safety:
````
dependencies:
  navigation_dot_bar:
    git:
      url: git://github.com/iwalpola/flutter_navigation_dot_bar.git
      version: "0.2.0"
````
Not Null Safe:
````
dependencies:
  navigation_dot_bar:
    git:
      url: git://github.com/iwalpola/flutter_navigation_dot_bar.git
      version: "0.1.4"
````
#### Run

````
  flutter packages get
````
Import the library to your project:
````
import 'package:navigation_dot_bar/navigation_dot_bar.dart';
````
#### Use it easily with BottomNavigationDotBar:
````dart
Scaffold(
  appBar: AppBar( title: Text("Demo Bottom Navigation Bar")),
  body: Container(),
  bottomNavigationBar: BottomNavigationDotBar ( // Use -> "BottomNavigationDotBar"
      items: <BottomNavigationDotBarItem>[
        BottomNavigationDotBarItem(icon: Icons.map, onTap: () { /* Any function - [open new screen] */ }, size:22.0), //optional size parameter (type double)
        BottomNavigationDotBarItem(icon: Icons.alarm_add, onTap: () { /* Any function - [open new screen] */ }),
        BottomNavigationDotBarItem(icon: Icons.timer, onTap: () { /* Any function - [open new screen] */ }),
        ...
        ..
        .
      ]
  ),
)
````
#### Complete Example
````dart
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
````
