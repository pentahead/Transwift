import 'package:flutter/material.dart';
import 'package:transwift/Booking/ticket.dart';
import 'package:transwift/instagram_body.dart';

class button_done extends StatelessWidget {
  const button_done({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Ticket()),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(4, 140, 239, 1),
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          textStyle: TextStyle(fontSize: 16),
          minimumSize: Size(150, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Text(
          'Done',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class button_next extends StatelessWidget {
  const button_next({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/home');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(4, 140, 239, 1),
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          textStyle: TextStyle(fontSize: 16),
          minimumSize: Size(150, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Text(
          'Next',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonGroupState();
}

class _RadioButtonGroupState extends State<RadioButton> {
  String _selectedValue = ''; // Initial selected value

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Radio<String>(
            value: '1',
            groupValue: _selectedValue,
            onChanged: (value) => setState(() => _selectedValue = value!),
          ),
          Text('My Balance'),
        ]),
        SizedBox(width: 10.0),
        Row(children: [
          Radio<String>(
            value: '2',
            groupValue: _selectedValue,
            onChanged: (value) => setState(() => _selectedValue = value!),
          ),
          Text('Credit Card'),
        ]),
        SizedBox(width: 10.0),
        Row(children: [
          Radio<String>(
            value: '3',
            groupValue: _selectedValue,
            onChanged: (value) => setState(() => _selectedValue = value!),
          ),
          Text('Debit Card '),
        ]),
      ],
    );
  }
}
