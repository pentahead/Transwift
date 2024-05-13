import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:transwift/Profile/account.dart';
import 'package:transwift/Profile/callcenter.dart';
import 'package:transwift/Profile/Assets/Widget.dart';

class account extends StatelessWidget {
  const account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Stack(children: [
          Positioned(
            top: 135,
            right: 0,
            left: 0,
            child: Container(
              height: 1000, // Adjusted height
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20), // No border on top right
                    bottomLeft: Radius.circular(0), // No border on bottom left
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
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "My Account",
                        style: poppins_30_semi(),
                      ),
                    ),
                    Center(
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage:
                            AssetImage('assets/images/profile.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 20, bottom: 10),
                      child: Text(
                        "Nama",
                        style: poppins_16_semi(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Container(
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.white, // Set background color to white
                          borderRadius: BorderRadius.circular(
                              10.0), // Set rounded corners
                          border: Border.all(
                            color: Colors.blue, // Set border color to blue
                            width: 2.0, // Set border width
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.perm_identity_rounded,
                              size: 20,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Bashori',
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  letterSpacing: 1,
                                  color: Colors.grey),
                            ),
                          ],
                        ), // Add your content inside the container
                        // Add padding around the content
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 20, bottom: 10),
                      child: Text(
                        "Email",
                        style: poppins_16_semi(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Container(
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.white, // Set background color to white
                          borderRadius: BorderRadius.circular(
                              10.0), // Set rounded corners
                          border: Border.all(
                            color: Colors.blue, // Set border color to blue
                            width: 2.0, // Set border width
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.email_rounded,
                              size: 20,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'WongIrengJembuten@gmail,com',
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  letterSpacing: 1,
                                  color: Colors.grey),
                            ),
                          ],
                        ), // Add your content inside the container
                        // Add padding around the content
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 20, bottom: 10),
                      child: Text(
                        "Phone Number",
                        style: poppins_16_semi(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Container(
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.white, // Set background color to white
                          borderRadius: BorderRadius.circular(
                              10.0), // Set rounded corners
                          border: Border.all(
                            color: Colors.blue, // Set border color to blue
                            width: 2.0, // Set border width
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.call,
                              size: 20,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '081393418944',
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  letterSpacing: 1,
                                  color: Colors.grey),
                            ),
                          ],
                        ), // Add your content inside the container
                        // Add padding around the content
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 20, bottom: 10),
                      child: Text(
                        "Alamat",
                        style: poppins_16_semi(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Container(
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.white, // Set background color to white
                          borderRadius: BorderRadius.circular(
                              10.0), // Set rounded corners
                          border: Border.all(
                            color: Colors.blue, // Set border color to blue
                            width: 2.0, // Set border width
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.location_on_outlined,
                              size: 20,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Kulon Arab',
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  letterSpacing: 1,
                                  color: Colors.grey),
                            ),
                          ],
                        ), // Add your content inside the container
                        // Add padding around the content
                      ),
                    ),
                  ]),
            ),
          ),
        ]),
      ),
    );
  }
}

TextStyle poppins_30_semi() {
  return TextStyle(
      fontFamily: "Poppins",
      fontWeight: FontWeight.w700,
      fontSize: 30,
      letterSpacing: 1,
      color: Colors.white);
}

TextStyle poppins_16_semi() {
  return TextStyle(
    fontFamily: "Poppins",
    fontWeight: FontWeight.w700,
    fontSize: 16,
    letterSpacing: 1,
  );
}
