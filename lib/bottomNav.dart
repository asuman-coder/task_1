import 'package:flutter/material.dart';
import 'package:task_1/screens/chat.dart';
import 'package:task_1/screens/home.dart';
import 'package:task_1/screens/learn.dart';
import 'package:task_1/screens/profile.dart';

import 'screens/hub.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  static final List<Widget> _bottomNavView = [
    const Home(),
    const Learn(),
    const Hub(),
    const Chat(),
    const Profile(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _bottomNavView.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          indicatorColor: Colors.blue,
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.auto_stories),
              label: ('Learn'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view),
              label: ('Hub'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.quickreply_outlined),
              label: ('Chat'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity),
              label: ('Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
