import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:transwift/Booking/assets/jadwal.dart';
import 'package:transwift/Booking/assets/button.dart';
import 'package:transwift/assets/NavBar.dart';

class DetailTicket extends StatelessWidget {
  const DetailTicket({super.key});

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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20), // No border on top right
                      bottomLeft:
                          Radius.circular(0), // No border on bottom left
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
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 55,
                      ),
                      Center(
                        child: Text(
                          "Payment",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "poppins",
                            fontWeight: FontWeight.bold,
                            fontSize: 36,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "CUKI AIR 465",
                          style: poppins16bold(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: jadwal(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Berangkat",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: jadwal(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 20),
                        child: Text(
                          "Pulang",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Price",
                          style: poppins16bold(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Rp. 2.500.000",
                          style: poppins16bold(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          "Payment Method",
                          style: poppins16bold(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: RadioButton(),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Center(
                        child: button_next(),
                      )
                    ]),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(
        selectedIndex: 1,
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
