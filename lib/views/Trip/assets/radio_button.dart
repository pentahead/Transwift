import 'package:flutter/material.dart';

class RadioButtons extends StatefulWidget {
  final ValueNotifier<String> selectedOptionNotifier; // Add this line

  const RadioButtons(
      {super.key,
      required this.selectedOptionNotifier}); // Modify the constructor

  @override
  // ignore: library_private_types_in_public_api
  _RadioButtonsState createState() => _RadioButtonsState();
}

class _RadioButtonsState extends State<RadioButtons> {
  void _handleRadioValueChange(String? value) {
    setState(() {
      widget.selectedOptionNotifier.value = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String>(
      valueListenable: widget.selectedOptionNotifier,
      builder: (context, selectedOption, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                title: const Text('Best Route'),
                leading: Radio<String>(
                  value: 'Best Route',
                  groupValue: selectedOption,
                  onChanged: _handleRadioValueChange,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                title: const Text('Fewer Transfer'),
                leading: Radio<String>(
                  value: 'Fewer Transfer',
                  groupValue: selectedOption,
                  onChanged: _handleRadioValueChange,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                title: const Text('Less Walking'),
                leading: Radio<String>(
                  value: 'Less Walking',
                  groupValue: selectedOption,
                  onChanged: _handleRadioValueChange,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                title: const Text('Wheelchair Accessible'),
                leading: Radio<String>(
                  value: 'Wheelchair Accessible',
                  groupValue: selectedOption,
                  onChanged: _handleRadioValueChange,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
