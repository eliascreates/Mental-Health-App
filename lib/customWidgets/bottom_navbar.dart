import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home,
                color: Colors.grey, size: 30, semanticLabel: 'Home Page'),
            label: 'Home',
            activeIcon: Icon(Icons.home,
                color: Colors.blue,
                size: 30,
                semanticLabel: 'Selected Home Page')),
        BottomNavigationBarItem(
            icon: Icon(Icons.dashboard,
                color: Colors.grey, size: 30, semanticLabel: 'Dashboard Page'),
            label: 'category',
            activeIcon: Icon(Icons.dashboard,
                color: Colors.blue,
                size: 30,
                semanticLabel: 'Selected Dashboard Page')),
        BottomNavigationBarItem(
            icon: Icon(Icons.mail,
                color: Colors.grey, size: 30, semanticLabel: 'Mail Page'),
            label: 'Mail',
            activeIcon: Icon(Icons.mail,
                color: Colors.blue,
                size: 30,
                semanticLabel: 'Selected Mail Page ')),
        BottomNavigationBarItem(
            icon: Icon(Icons.person,
                color: Colors.grey, size: 30, semanticLabel: 'Profile Page'),
            label: 'Profile',
            activeIcon: Icon(Icons.person,
                color: Colors.blue,
                size: 30,
                semanticLabel: 'Selected Profile Page')),
      ],
      showSelectedLabels: false,
    );
  }
}
