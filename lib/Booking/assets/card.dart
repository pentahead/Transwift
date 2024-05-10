import 'package:flutter/material.dart';
import 'package:transwift/Booking/assets/jadwal.dart';
import 'package:transwift/Booking/DetailTicket.dart';

class CardList extends StatelessWidget {
  const CardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Card(
        color: Color.fromARGB(255, 255, 255, 255),
        surfaceTintColor: Colors.white, // Set background color to pure white
        elevation: 4.0,
        shadowColor: const Color.fromARGB(255, 10, 10, 10)
            .withOpacity(0.8), // Asdjust shadow color as needed
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(10.0), // Adjust corner radius as needed
        ),
        child: InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailTicket()),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Batik Air",
                  style: poppins16bold(),
                ),
              ),
              jadwal(),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Berangkat",
                  style: poppins14(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: Text(
                  "R.5.000.000",
                  style: poppins16bold(),
                ),
              ),
              jadwal(),
              Padding(
                padding: const EdgeInsets.only(left: 30, bottom: 20),
                child: Text(
                  "pulang",
                  style: poppins14(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

TextStyle poppins16bold() {
  return TextStyle(
    fontFamily: "poppins",
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 1,
  );
}

TextStyle poppins14() {
  return TextStyle(
    fontFamily: "poppins",
    fontWeight: FontWeight.w500,
    fontSize: 14,
    letterSpacing: 1,
  );
}
