import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:transwift/assets/NavBar.dart';
import 'package:transwift/provider/user_provider.dart';
import 'package:transwift/views/Profile/Assets/edit.dart';
import 'package:transwift/views/Profile/Assets/widget_profile.dart';

class AccountEdit extends StatelessWidget {
  const AccountEdit({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context, listen: false);

    final TextEditingController nameController =
        TextEditingController(text: userProvider.name);
    final TextEditingController emailController =
        TextEditingController(text: userProvider.email);
    final TextEditingController phoneController =
        TextEditingController(text: userProvider.phone);
    final TextEditingController addressController =
        TextEditingController(text: userProvider.address);

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
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
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
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
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 0, top: 25, bottom: 25),
                        child: Text(
                          "My Account",
                          style: poppins_30_semi_white(),
                        ),
                      ),
                      const Center(
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage:
                              AssetImage('assets/images/profile.jpg'),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name", style: poppins_16_semi()),
                            const SizedBox(height: 10),
                            Edit(
                              icon: Icons.person,
                              controller: nameController,
                            ),
                            const SizedBox(height: 20),
                            Text("Phone Number", style: poppins_16_semi()),
                            const SizedBox(height: 10),
                            Edit(
                              icon: Icons.phone,
                              controller: phoneController,
                            ),
                            const SizedBox(height: 20),
                            Text("Address", style: poppins_16_semi()),
                            const SizedBox(height: 10),
                            Edit(
                              icon: Icons.location_on,
                              controller: addressController,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 200),
                      Donebutton(
                        onPressed: () async {
                          final userId = FirebaseAuth.instance.currentUser?.uid;
                          if (userId != null) {
                            await userProvider.putUser(
                              userId,
                              nameController.text,
                              emailController.text,
                              phoneController.text,
                              addressController.text,
                            );
                            Navigator.pop(context);
                          } else {
                            // Handle the error when user is not logged in
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("User not logged in."),
                              ),
                            );
                          }
                        },
                      ),
                      const SizedBox(
                          height: 30), // Add some space at the bottom
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavBar(selectedIndex: 2),
    );
  }
}
