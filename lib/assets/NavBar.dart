import 'package:flutter/material.dart';

import 'package:transwift/homepage_body.dart';
import 'package:transwift/views/Profile/profile.dart';
import 'package:transwift/views/Trip/my_trip.dart';

class NavBar extends StatefulWidget {
  final int selectedIndex;

  const NavBar({super.key, required this.selectedIndex});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildIconButton(Icons.home, 0),
          _buildIconButton(Icons.map_outlined, 1),
          _buildIconButton(Icons.account_circle, 2),
        ],
      ),
    );
  }

  Widget _buildIconButton(IconData icon, int index) {
    return AnimatedPadding(
      padding: EdgeInsets.only(top: _selectedIndex == index ? 0.0 : 10.0),
      duration: const Duration(milliseconds: 200),
      child: IconButton(
        icon: Icon(icon),
        onPressed: () => _onItemTapped(index),
        color: _selectedIndex == index ? Colors.blue : Colors.black,
        iconSize: 30,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.of(context)
            .pushReplacement(_createRoute(const HomepageBody()));
        break;
      case 1:
        Navigator.of(context).pushReplacement(_createRoute(const MyTrip()));
        break;
      case 2:
        Navigator.of(context).pushReplacement(_createRoute(const Profile()));
        break;
    }
  }

  Route _createRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }
}
