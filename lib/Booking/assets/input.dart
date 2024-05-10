import 'package:flutter/material.dart';

class input extends StatelessWidget {
  const input({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(), // Adds an underline
              contentPadding:
                  EdgeInsets.symmetric(vertical: 0), // Set the height
            ),
          )
        ],
      ),
    );
  }
}
