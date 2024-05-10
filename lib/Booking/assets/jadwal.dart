import 'package:flutter/material.dart';

class jadwal extends StatelessWidget {
  const jadwal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Text("00.00"),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.arrow_forward_rounded,
          size: 30,
        ),
        SizedBox(
          width: 10,
        ),
        Text("00.00"),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
