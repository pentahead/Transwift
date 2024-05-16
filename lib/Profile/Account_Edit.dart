import 'package:flutter/material.dart';
import 'package:transwift/Profile/Assets/Widget.dart';
import 'package:transwift/Profile/Assets/edit.dart';
import 'package:transwift/assets/NavBar.dart';

class accountEdit extends StatelessWidget {
  const accountEdit({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.white],
            stops: [0.5, 0.5],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 135,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
            ),
            Positioned(
              child: SingleChildScrollView(
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
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nama",
                            style: poppins_16_semi(),
                          ),
                          SizedBox(height: 10),
                          Edit(
                            label: "Nama",
                            icon: Icons.person,
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Email",
                            style: poppins_16_semi(),
                          ),
                          SizedBox(height: 10),
                          Edit(
                            label: "Email",
                            icon: Icons.email,
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Phone Number",
                            style: poppins_16_semi(),
                          ),
                          SizedBox(height: 10),
                          Edit(
                            label: "Phone Number",
                            icon: Icons.phone,
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Alamat",
                            style: poppins_16_semi(),
                          ),
                          SizedBox(height: 10),
                          Edit(
                            label: "Alamat",
                            icon: Icons.location_on,
                          ),
                          SizedBox(height: 30),
                          Center(
                            child: back_button(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(selectedIndex: 2),
    );
  }
}
