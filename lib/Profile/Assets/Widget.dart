import 'package:flutter/material.dart';
import 'package:transwift/Profile/Topup.dart';
import 'package:transwift/Profile/profile.dart';

class saldo extends StatelessWidget {
  const saldo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "card",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                  fontSize: 10,
                  letterSpacing: 1,
                  color: Colors.grey),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TopUp()),
              ),
              child: Icon(
                Icons.credit_card,
                size: 30,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Saldo",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                  fontSize: 10,
                  letterSpacing: 1,
                  color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                "Rp.250.000",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700,
                    fontSize: 14),
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "card",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                  fontSize: 10,
                  letterSpacing: 1,
                  color: Colors.grey),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TopUp()),
              ),
              child: Icon(
                Icons.add_box_rounded,
                size: 30,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class back_button extends StatelessWidget {
  const back_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Profile()),
      ),
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white, // Set background color to white
          borderRadius: BorderRadius.circular(30.0), // Set rounded corners
          border: Border.all(
            color: Colors.blue, // Set border color to blue
            width: 2.0, // Set border width
          ),
        ),
        child: Center(
          child: Text(
            'BACK',
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w700,
                fontSize: 20,
                letterSpacing: 1,
                color: Colors.blue),
          ),
        ), // Add your content inside the container
        // Add padding around the content
      ),
    );
  }
}

class Logout extends StatelessWidget {
  const Logout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Profile()),
      ),
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white, // Set background color to white
          borderRadius: BorderRadius.circular(30.0), // Set rounded corners
          border: Border.all(
            color: Colors.blue, // Set border color to blue
            width: 2.0, // Set border width
          ),
        ),
        child: Center(
          child: Text(
            'Logout',
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w700,
                fontSize: 20,
                letterSpacing: 1,
                color: Colors.blue),
          ),
        ), // Add your content inside the container
        // Add padding around the content
      ),
    );
  }
}
