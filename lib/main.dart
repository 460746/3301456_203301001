import 'package:film_46/screens/allMovie.dart';
import 'package:film_46/screens/home.dart';
import 'package:film_46/screens/intro.dart';
import 'package:film_46/screens/login.dart';
import 'package:film_46/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:global_bottom_navigation_bar/global_bottom_navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: IntroScreen());
  }
}
