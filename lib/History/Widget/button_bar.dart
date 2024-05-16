import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomToggleButton(
          title: 'History',
          index: 0,
          selectedIndex: selectedIndex,
          onPressed: () {
            setState(() {
              selectedIndex = 0;
            });
          },
        ),
        CustomToggleButton(
          title: 'On Process',
          index: 1,
          selectedIndex: selectedIndex,
          onPressed: () {
            setState(() {
              selectedIndex = 1;
            });
          },
        ),
        CustomToggleButton(
          title: 'Scheduled',
          index: 2,
          selectedIndex: selectedIndex,
          onPressed: () {
            setState(() {
              selectedIndex = 2;
            });
          },
        ),
      ],
    );
  }
}

class CustomToggleButton extends StatelessWidget {
  final String title;
  final int index;
  final int selectedIndex;
  final Function onPressed;

  CustomToggleButton({
    required this.title,
    required this.index,
    required this.selectedIndex,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: index == selectedIndex ? Colors.blue : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.blue,
            width: 1.5,
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: index == selectedIndex ? Colors.white : Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
