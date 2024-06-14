import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:transwift/provider/user_provider.dart';
import 'package:transwift/views/Profile/Assets/widget_profile.dart';
import 'package:transwift/assets/NavBar.dart';

class Account extends StatelessWidget {
  const Account({super.key});

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
              height: 1000,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
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
              child: Consumer<UserProvider>(
                builder: (context, userProvider, child) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, top: 50, bottom: 0),
                        child: Text(
                          "My Account",
                          style: poppins_30_semi_white(),
                        ),
                      ),
                      const Center(
                        child: CircleAvatar(
                          radius: 60,
                          backgroundColor: Color.fromARGB(255, 0, 0, 0),
                          child: Icon(
                            Icons.person,
                            size: 60,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30, right: 30, top: 20, bottom: 5),
                        child: Text(
                          "Name",
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
                              const SizedBox(width: 10),
                              const Icon(
                                Icons.perm_identity_rounded,
                                size: 20,
                                color: Colors.blue,
                              ),
                              const SizedBox(width: 20),
                              Text(
                                userProvider.name,
                                style: poppins_12_w700_grey(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30, right: 30, top: 10, bottom: 5),
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
                              const SizedBox(width: 10),
                              const Icon(
                                Icons.email_rounded,
                                size: 20,
                                color: Colors.blue,
                              ),
                              const SizedBox(width: 20),
                              Text(
                                userProvider.email,
                                style: poppins_12_w700_grey(),
                              ),
                            ],
                          ),
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
                              const SizedBox(width: 10),
                              const Icon(
                                Icons.call,
                                size: 20,
                                color: Colors.blue,
                              ),
                              const SizedBox(width: 20),
                              Text(
                                userProvider.phone,
                                style: poppins_12_w700_grey(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 190),
                      const Center(child: EditButton()),
                      const SizedBox(height: 10),
                      const Center(child: Backbutton())
                    ],
                  );
                },
              ),
            ),
          ),
        ]),
      ),
      bottomNavigationBar: const NavBar(selectedIndex: 2),
    );
  }
}
