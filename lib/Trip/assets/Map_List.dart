import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class List extends StatefulWidget {
  const List({super.key});

  @override
  State<List> createState() => _List();
}

class _List extends State<List> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 40,
        left: 40,
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: _buildRadio(),
          ),
        ),
      ),
    );
  }

  Widget _buildRadio() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40,
        ),
        _buildRadioOption(1, "pergi ke pantai"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(2, "keluarkan alat kencing"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(3, "pergi kesungai"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(4, "naik kappal"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(4, "naik kappal"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(4, "naik kappal"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(4, "naik kappal"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(4, "naik kappal"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(4, "naik kappal"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(4, "naik kappal"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(4, "naik kappal"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(4, "naik kappal"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(4, "naik kappal"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(4, "naik kappal"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(4, "naik kappal"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(4, "naik kappal"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(4, "naik kappal"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(4, "naik kappal"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(4, "naik kappal"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(4, "naik kappal"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(4, "naik kappal"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(4, "naik kappal"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(4, "naik kappal"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(4, "naik kappal"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(4, "naik kappal"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(4, "naik kappal"),
      ],
    );
  }

  Widget _buildRadioOption(int value, String label) {
    return Row(
      children: [
        Radio(
          value: value,
          groupValue: _value,
          onChanged: (newValue) {
            setState(() {
              _value = newValue as int;
            });
          },
        ),
        SizedBox(width: 10),
        Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontFamily: "poppins",
            fontWeight: FontWeight.w500,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
