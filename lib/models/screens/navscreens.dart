import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/models/screens/home_screen.dart';

class NavScreens extends StatefulWidget {
  @override
  _NavScreensState createState() => _NavScreensState();
}

class _NavScreensState extends State<NavScreens> {
  final List<Widget> _screens = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  int _currentIndex = 0;
  final Map<String, IconData> _icons = {
    'Home': Icons.home,
    'Search': Icons.search,
    'Coming Soon': Icons.queue_play_next,
    "Downloads": Icons.file_download,
    "More": Icons.menu,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: _icons
            .map((title, icon) => MapEntry(
                title,
                BottomNavigationBarItem(
                  icon: Icon(
                    icon,
                    size: 30,
                  ),
                  title: Text(title),
                )))
            .values
            .toList(),
        currentIndex: _currentIndex,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: (val) {
          setState(() {
            _currentIndex = val;
          });
        },
      ),
    );
  }
}
