import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:transwift/Profile/profile.dart';
import 'package:transwift/Profile/Assets/Widget.dart';
import 'package:transwift/assets/NavBar.dart';

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
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "My Account",
                            style: poppins_30_semi_white(),
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
                              left: 30, right: 30, top: 20, bottom: 5),
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
                            decoration: blue_border_white_bg(),
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
                                  style: poppins_12_w700_grey(),
                                ),
                              ],
                            ), // Add your content inside the container
                            // Add padding around the content
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, top: 20, bottom: 5),
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
                            decoration: blue_border_white_bg(),
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
                                  style: poppins_12_w700_grey(),
                                ),
                              ],
                            ), // Add your content inside the container
                            // Add padding around the content
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, top: 10, bottom: 10),
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
                            decoration: blue_border_white_bg(),
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
                                  style: poppins_12_w700_grey(),
                                ),
                              ],
                            ), // Add your content inside the container
                            // Add padding around the content
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, top: 10, bottom: 10),
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
                            decoration: blue_border_white_bg(),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.location_on_rounded,
                                  size: 20,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Kulon Arab',
                                  style: poppins_12_w700_grey(),
                                ),
                              ],
                            ), // Add your content inside the container
                            // Add padding around the content
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: edit_button(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(child: back_button())
                      ]),
                ),
              ),
            ),
          ]),
        ),
        bottomNavigationBar: NavBar(
          selectedIndex: 2,
        ));
  }
}
