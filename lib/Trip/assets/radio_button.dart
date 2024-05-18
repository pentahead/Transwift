import 'package:flutter/material.dart';

class RadioButtons extends StatefulWidget {
  @override
  _RadioButtonsState createState() => _RadioButtonsState();
}

class _RadioButtonsState extends State<RadioButtons> {
  String _selectedOption = '';

  void _handleRadioValueChange(String? value) {
    setState(() {
      _selectedOption = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: ListTile(
            title: Text('Best Route'),
            leading: Radio<String>(
              value: 'Option 1',
              groupValue: _selectedOption,
              onChanged: _handleRadioValueChange,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: ListTile(
            title: Text('Fewer Transfer'),
            leading: Radio<String>(
              value: 'Option 2',
              groupValue: _selectedOption,
              onChanged: _handleRadioValueChange,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: ListTile(
            title: Text('Less Walking'),
            leading: Radio<String>(
              value: 'Option 3',
              groupValue: _selectedOption,
              onChanged: _handleRadioValueChange,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: ListTile(
            title: Text('Wheelchair accessible'),
            leading: Radio<String>(
              value: 'Option 4',
              groupValue: _selectedOption,
              onChanged: _handleRadioValueChange,
            ),
          ),
        ),
      ],
    );
  }
}
