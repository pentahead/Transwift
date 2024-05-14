import 'package:flutter/material.dart';
import 'package:transwift/Profile/Topup.dart';
import 'package:transwift/Profile/profile.dart';
import 'package:transwift/Profile/account_edit.dart';

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
              style: Poppins_w700_10_grey(),
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
              style: Poppins_w700_10_grey(),
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
              style: Poppins_w700_10_grey(),
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

class edit_button extends StatelessWidget {
  const edit_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => accountEdit()),
      ),
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.blue, // Set background color to white
          borderRadius: BorderRadius.circular(30.0), // Set rounded corners
          border: Border.all(
            color: Colors.blue, // Set border color to blue
            width: 2.0, // Set border width
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              Text(
                'Edit',
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    letterSpacing: 1,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class edit_icon extends StatelessWidget {
  const edit_icon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: GestureDetector(
        onTap: () {},
        child: Icon(
          Icons.edit,
          color: Colors.blue,
          size: 30,
        ),
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

BoxDecoration blue_border_white_bg() {
  return BoxDecoration(
    color: Colors.white, // Set background color to white
    borderRadius: BorderRadius.circular(10.0), // Set rounded corners
    border: Border.all(
      color: Colors.blue, // Set border color to blue
      width: 2.0, // Set border width
    ),
  );
}

TextStyle poppins_30_semi_white() {
  return TextStyle(
      fontFamily: "Poppins",
      fontWeight: FontWeight.w900,
      fontSize: 30,
      letterSpacing: 1,
      color: Colors.white);
}

TextStyle poppins_16_semi() {
  return TextStyle(
    fontFamily: "Poppins",
    fontWeight: FontWeight.w800,
    fontSize: 16,
    letterSpacing: 1,
  );
}

TextStyle poppins_12_Black_w700() {
  return TextStyle(
      fontFamily: "Poppins",
      fontWeight: FontWeight.w700,
      fontSize: 12,
      letterSpacing: 1,
      color: Colors.black);
}

TextStyle poppins_12_w700_grey() {
  return TextStyle(
      fontFamily: "Poppins",
      fontWeight: FontWeight.w700,
      fontSize: 12,
      letterSpacing: 1,
      color: Colors.grey);
}

TextStyle Poppins_w700_10_grey() {
  return TextStyle(
      fontFamily: "Poppins",
      fontWeight: FontWeight.w700,
      fontSize: 10,
      letterSpacing: 1,
      color: Colors.grey);
}
