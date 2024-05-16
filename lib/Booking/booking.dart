import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:transwift/Booking/assets/dropdown.dart';
import 'package:transwift/Booking/assets/input.dart';
import 'package:transwift/Booking/assets/date_pick.dart';
import 'package:transwift/Booking/assets/Button.dart';
import 'package:transwift/assets/NavBar.dart';

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
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 55,
                      ),
                      Center(
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
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "Pilih kendaraan",
                          style: poppins16bold(),
                        ),
                      ),
                      Dropdown(),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Text(
                          "Dari",
                          style: poppins_14(),
                        ),
                      ),
                      input(),
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Text(
                          "Tujuan",
                          style: poppins_14(),
                        ),
                      ),
                      input(),
                      Padding(
                        padding: EdgeInsets.only(left: 25, bottom: 10),
                        child: Text(
                          "Tanggal",
                          style: poppins_16_semi(),
                        ),
                      ),
                      DatePicker(),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Text(
                          "Jumlah Penumpang",
                          style: poppins_14(),
                        ),
                      ),
                      input(),
                      SizedBox(
                        height: 20,
                      ),
                      button_done()
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: NavBar(
        selectedIndex: 1,
      ),
    );
  }

  TextStyle poppins_16_semi() {
    return TextStyle(
      fontFamily: "poppins",
      fontWeight: FontWeight.w400,
      fontSize: 16,
      letterSpacing: 1,
    );
  }

  TextStyle poppins16bold() {
    return TextStyle(
      fontFamily: "poppins",
      fontWeight: FontWeight.bold,
      fontSize: 16,
      letterSpacing: 1,
    );
  }

  TextStyle poppins_14() {
    return TextStyle(
      fontFamily: "poppins",
      fontWeight: FontWeight.w400,
      fontSize: 14,
      letterSpacing: 1,
    );
  }
}
