import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:transwift/Profile/account.dart';
import 'package:transwift/Profile/callcenter.dart';
import 'package:transwift/Profile/Assets/Widget.dart';
import 'package:transwift/assets/NavBar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
                        children: [
                          SizedBox(
                            height: 70,
                          ),
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/profile.jpg'),
                          ),
                          Text(
                            "Bashori",
                            style: poppins_30_semi(),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Container(
                              width: 1000,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    10.0), // Adjust corner radius as needed
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(
                                        0.5), // Adjust shadow color as needed
                                    blurRadius:
                                        5.0, // Adjust blur radius as needed
                                    spreadRadius:
                                        0.0, // Adjust spread radius as needed, 0 for no outward spread
                                    offset: Offset(0.0,
                                        5.0), // Adjust shadow offset for bottom emphasis
                                  ),
                                ],
                              ),
                              child: saldo(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => account()),
                              ),
                              child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors
                                            .black, // Change underline color
                                        width:
                                            2.0, // Change underline thickness
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.perm_identity_rounded,
                                        size: 25,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Account"),
                                      SizedBox(),
                                      Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: 25,
                                      )
                                    ],
                                  ) // Add padding for content spacing
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => callcenter()),
                              ),
                              child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors
                                            .black, // Change underline color
                                        width:
                                            2.0, // Change underline thickness
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.support_agent,
                                        size: 25,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Call Center"),
                                      SizedBox(),
                                      Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: 25,
                                      )
                                    ],
                                  ) // Add padding for content spacing
                                  ),
                            ),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          Center(
                              child: Padding(
                            padding: const EdgeInsets.only(
                                top: 0, left: 40, right: 40),
                            child: Logout(),
                          ))
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
        bottomNavigationBar: NavBar(
          selectedIndex: 2,
        ));
  }
}

TextStyle poppins_30_semi() {
  return TextStyle(
    fontFamily: "Poppins",
    fontWeight: FontWeight.w700,
    fontSize: 30,
    letterSpacing: 1,
  );
}
