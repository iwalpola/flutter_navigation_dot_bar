# Navigation Dot Bar

A Flutter library, which adds a BottomNavigationBar with a better style. Inspired by the application "Reflectly"

![20181111_230822](https://user-images.githubusercontent.com/22163898/48326755-02bf8480-e609-11e8-8825-b81750ea9dfc.gif)

## How to use it

Add the dependency to your project, by editing the pubspec.yaml file.

````
  dependencies:
    navigation_dot_bar: ^0.1.3
````
Import the library to your project:
````
import 'package:navigation_dot_bar/navigation_dot_bar.dart';
````
Use it easily with BottomNavigationDotBar:
````dart
Scaffold(
  appBar: AppBar( title: Text("Demo Bottom Navigation Bar")),
  body: Container(),
  bottomNavigationBar: BottomNavigationDotBar ( // Use -> "BottomNavigationDotBar"
      items: <BottomNavigationDotBarItem>[
        BottomNavigationDotBarItem(icon: Icons.map, onTap: () { /* Any function - [open new screen] */ }),
        BottomNavigationDotBarItem(icon: Icons.alarm_add, onTap: () { /* Any function - [open new screen] */ }),
        BottomNavigationDotBarItem(icon: Icons.timer, onTap: () { /* Any function - [open new screen] */ }),
        ...
        ..
        .
      ]
  ),
)
````
