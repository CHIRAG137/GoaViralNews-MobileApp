import 'package:flutter/material.dart';
import 'package:goaviralnews/dashboard.dart';
import 'package:goaviralnews/photo_gallery.dart';
import 'package:goaviralnews/trip_section.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Routes extends StatefulWidget {
  const Routes({super.key});

  @override
  State<Routes> createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  var _currentIndex = 0;
  final List<Widget> _pages = [
    DashboardScreen(),
    PhotoGalleryScreen(),
    PhotoGalleryScreen(),
    TripSectionScreen(),
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
