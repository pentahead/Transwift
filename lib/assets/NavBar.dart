import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const NavBar(this.selectedIndex, this.onItemTapped, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Transform.translate(
            offset: selectedIndex == 0 ? Offset(0, -10) : Offset(0, 0),
            child: IconButton(
              icon: Icon(Icons.home),
              onPressed: () => onItemTapped(0),
              color: selectedIndex == 0 ? Colors.blue : Colors.black,
              iconSize: selectedIndex == 0 ? 30 : 24,
            ),
          ),
          Transform.translate(
            offset: selectedIndex == 1 ? Offset(0, -10) : Offset(0, 0),
            child: IconButton(
              icon: Icon(Icons.map_outlined),
              onPressed: () => onItemTapped(1),
              color: selectedIndex == 1 ? Colors.blue : Colors.black,
              iconSize: selectedIndex == 1 ? 30 : 24,
            ),
          ),
          Transform.translate(
            offset: selectedIndex == 2 ? Offset(0, -10) : Offset(0, 0),
            child: IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () => onItemTapped(2),
              color: selectedIndex == 2 ? Colors.blue : Colors.black,
              iconSize: selectedIndex == 2 ? 30 : 24,
            ),
          ),
        ],
      ),
    );
  }
}
