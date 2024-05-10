import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBar();
}

class _NavBar extends State<NavBar> {
  int _selectedIndex = 0; // State to track the currently selected item

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () => Navigator.pushReplacementNamed(context, '/home'),
            color: _selectedIndex == 0 ? Colors.blue : Colors.black,
            iconSize: _selectedIndex == 0 ? 30 : 24,
          ),
          IconButton(
            icon: Icon(Icons.map_outlined),
            onPressed: () => _onItemTapped(1),
            color: _selectedIndex == 1 ? Colors.blue : Colors.black,
            iconSize: _selectedIndex == 1 ? 30 : 24,
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () => _onItemTapped(2),
            color: _selectedIndex == 2 ? Colors.blue : Colors.black,
            iconSize: _selectedIndex == 2 ? 30 : 24,
          ),
        ],
      ),
    );
  }
}
