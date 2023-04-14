import 'package:film_46/screens/allMovie.dart';
import 'package:film_46/screens/home.dart';
import 'package:film_46/screens/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:global_bottom_navigation_bar/global_bottom_navigation_bar.dart';

import 'category.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return ScaffoldGlobalBottomNavigation(
      listOfChild: [
        HomePage(),
        AllMoviesPage(),
        MovieCategoriesPage(),
        ProfilePage(),
      ],
      listOfBottomNavigationItem: buildBottomNavigationItemList(),
    );
  }

  List<BottomNavigationItem> buildBottomNavigationItemList() => [
        BottomNavigationItem(
          activeIcon: Icon(
            Icons.movie,
            color: Colors.amber,
            size: 30,
          ),
          inActiveIcon: Icon(
            Icons.movie,
            color: Colors.grey,
            size: 21,
          ),
          title: 'explore',
          color: Colors.white,
          vSync: this,
        ),
        BottomNavigationItem(
          activeIcon: Icon(
            Icons.local_movies,
            color: Colors.amber,
            size: 30,
          ),
          inActiveIcon: Icon(
            Icons.local_movies,
            color: Colors.grey,
            size: 21,
          ),
          title: 'favorite',
          color: Colors.white,
          vSync: this,
        ),
        BottomNavigationItem(
          activeIcon: Icon(
            Icons.category,
            color: Colors.amber,
            size: 30,
          ),
          inActiveIcon: Icon(
            Icons.category,
            color: Colors.grey,
            size: 21,
          ),
          title: 'learn',
          color: Colors.white,
          vSync: this,
        ),
        BottomNavigationItem(
          activeIcon: Icon(
            Icons.person,
            color: Colors.amber,
            size: 30,
          ),
          inActiveIcon: Icon(
            Icons.person,
            color: Colors.grey,
            size: 21,
          ),
          title: 'notifications',
          color: Colors.white,
          vSync: this,
        ),
      ];
}
