import 'package:flutter/material.dart';
import 'package:goaviralnews/features/navigation/screens/dashboard.dart';
import 'package:goaviralnews/features/navigation/screens/search.dart';
import 'package:goaviralnews/features/navigation/screens/photo_gallery.dart';
import 'package:goaviralnews/features/navigation/screens/tripzie.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Routes extends StatefulWidget {
  const Routes({super.key});

  static const String routName = "/routes";

  @override
  State<Routes> createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  var _currentIndex = 0;
  final List<Widget> _pages = [
    DashboardPage(),
    SearchPage(),
    PhotoGalleryScreen(),
    TripSectionPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.purple,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
            selectedColor: Colors.orange,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.task_outlined),
            title: Text("Gallery"),
            selectedColor: Colors.pink,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Plan"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
