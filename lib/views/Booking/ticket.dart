import 'package:flutter/material.dart';
import 'package:transwift/views/Booking/assets/card.dart';

class Ticket extends StatelessWidget {
  const Ticket({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Stack(
          children: [
            Positioned(
              top: 115,
              right: 0,
              left: 0,
              child: Container(
                height: screenHeight * 0.9,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    ),
                    color: Colors.white),
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 55,
                    ),
                    const Center(
                      child: Text(
                        "Booking",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "You can go there with : ",
                        style: poppins16bold(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: SizedBox(
                        height: screenHeight * 0.75,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: const [
                            CardList(),
                            CardList(),
                            CardList(),
                            CardList(),
                            CardList(),
                            CardList(),
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

TextStyle poppins16bold() {
  return const TextStyle(
    fontFamily: "poppins",
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 1,
  );
}
