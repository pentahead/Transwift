import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:transwift/Profile/profile.dart';
import 'package:transwift/Profile/assets/widget.dart';

class callcenter extends StatelessWidget {
  const callcenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Stack(
          children: [
            Positioned(
              top: 95,
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "callcenter",
                          style: poppins_30_semi(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Profile()),
                          ),
                          child: Container(
                              height: 30,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color:
                                        Colors.black, // Change underline color
                                    width: 2.0, // Change underline thickness
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.support_agent,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Connect Live Chat",
                                    style: poppins_20_semi(),
                                  ),
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
                            MaterialPageRoute(builder: (context) => Profile()),
                          ),
                          child: Container(
                              height: 30,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color:
                                        Colors.black, // Change underline color
                                    width: 2.0, // Change underline thickness
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.email_rounded,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Hit Our Email Us",
                                    style: poppins_20_semi(),
                                  ),
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
                        height: 500,
                      ),
                      Center(
                          child: Padding(
                        padding:
                            const EdgeInsets.only(top: 0, left: 40, right: 40),
                        child: back_button(),
                      ))
                    ],
                  ),
                ))
          ],
        ),
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

TextStyle poppins_20_semi() {
  return TextStyle(
    fontFamily: "Poppins",
    fontWeight: FontWeight.w700,
    fontSize: 20,
    letterSpacing: 1,
  );
}
