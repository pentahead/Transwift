import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transwift/Profile/profile.dart';
import 'package:transwift/Profile/Assets/Widget.dart';

class TopUp extends StatelessWidget {
  const TopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 100,
                color: Colors.blue,
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
                      height: 20,
                    ),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: BackButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profile()),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "Balance",
                          style: poppins_30_semi_white(),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        width: 500,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(
                                  0.5), // Adjust shadow color as needed
                              blurRadius: 5.0, // Adjust blur radius as needed
                              spreadRadius:
                                  0.0, // Adjust spread radius as needed, 0 for no outward spread
                              offset: Offset(0.0,
                                  5.0), // Adjust shadow offset for bottom emphasis
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Saldo",
                                  style: poppin_w800_14(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    "Rp.250.000",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w800,
                                        fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Top Up",
                                    style: poppin_w800_14(),
                                  ),
                                  GestureDetector(
                                    onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => TopUp()),
                                    ),
                                    child: Icon(
                                      Icons.add_box_outlined,
                                      size: 40,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Text(
                        "Reward",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w800,
                            fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, top: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.card_giftcard_outlined,
                            color: Colors.blue,
                            size: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              "Enjoy 50 sign up bonus points",
                              style: TextStyle(
                                  fontFamily: "poppinns",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 20),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundImage:
                                AssetImage('assets/images/card.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Cards",
                            style: TextStyle(
                                fontFamily: "poppinns",
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, top: 20),
                      child: Row(
                        children: [
                          Container(
                            width: 110,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(63, 227, 233, 1),
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
                            child: Center(
                              child: Text(
                                "Credit",
                                style: TextStyle(
                                    fontFamily: "poppinns",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              width: 210,
                              height: 100,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Credit Cards",
                                    style: TextStyle(
                                      fontFamily: "poppinns",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.discount_outlined,
                                        size: 15,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        "First purchase discount",
                                        style: TextStyle(
                                          fontFamily: "poppinns",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.card_giftcard_outlined,
                                        size: 15,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        "Redeem free gifts for points",
                                        style: TextStyle(
                                          fontFamily: "poppinns",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, top: 20),
                      child: Row(
                        children: [
                          Container(
                            width: 110,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(46, 164, 233, 1),
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
                            child: Center(
                              child: Text(
                                "Debit",
                                style: TextStyle(
                                    fontFamily: "poppinns",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              width: 210,
                              height: 100,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Credit Cards",
                                    style: TextStyle(
                                      fontFamily: "poppinns",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.discount_outlined,
                                        size: 15,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        "First purchase discount",
                                        style: TextStyle(
                                          fontFamily: "poppinns",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.card_giftcard_outlined,
                                        size: 15,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        "Redeem free gifts for points",
                                        style: TextStyle(
                                          fontFamily: "poppinns",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 200,
                    ),
                    Center(child: back_button())
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  TextStyle poppin_w800_14() {
    return TextStyle(
        fontFamily: "Poppins", fontWeight: FontWeight.w800, fontSize: 14);
  }
}
