import 'package:flutter/material.dart';
import 'package:transwift/History/Widget/button_bar.dart';
import 'package:transwift/History/Widget/card.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.blue,
            height: 75,
            width: 2000,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BackButton(
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "My Trip",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: "Poppins",
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomButton(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: 500,
              height: 600,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    card(),
                    card(),
                    card(),
                    card(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
