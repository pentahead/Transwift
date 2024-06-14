import 'package:flutter/material.dart';
import 'package:transwift/views/Booking/assets/button.dart';
import 'package:transwift/views/Booking/assets/dropdown_route.dart'; // Import DropdownRoute
import 'package:transwift/views/Booking/assets/dropdown_stop.dart'; // Import DropdownStop

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
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
                height: 1000, // Adjusted height
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: SingleChildScrollView(
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
                      padding: const EdgeInsets.fromLTRB(
                          25, 30, 25, 10), // Added padding
                      child: Text(
                        "Choose Location",
                        style: poppins_14(),
                      ),
                    ),
                    const DropdownRoute(), // Use DropdownRoute
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                          25, 0, 25, 10), // Added padding
                      child: Text(
                        "From",
                        style: poppins_14(),
                      ),
                    ),
                    const DropdownStop(), // Use DropdownStop
                    const SizedBox(
                      height: 20,
                    ),
                    const ButtonDone()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  TextStyle poppins_16_semi() {
    return const TextStyle(
      fontFamily: "poppins",
      fontWeight: FontWeight.w400,
      fontSize: 16,
      letterSpacing: 1,
    );
  }

  TextStyle poppins16bold() {
    return const TextStyle(
      fontFamily: "poppins",
      fontWeight: FontWeight.bold,
      fontSize: 16,
      letterSpacing: 1,
    );
  }

  TextStyle poppins_14() {
    return const TextStyle(
      fontFamily: "poppins",
      fontWeight: FontWeight.w400,
      fontSize: 14,
      letterSpacing: 1,
    );
  }
}
