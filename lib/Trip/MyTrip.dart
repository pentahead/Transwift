import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:transwift/trip/Map.dart';
import 'package:transwift/assets/NavBar.dart';

class MyTrip extends StatefulWidget {
  const MyTrip({Key? key}) : super(key: key);

  @override
  _MyTripState createState() => _MyTripState();
}

class _MyTripState extends State<MyTrip> {
  String _searchText = '';
  int _value = 0;
  int _selectedIndex = 0; // State untuk mengetahui halaman yang aktif

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: Color.fromRGBO(4, 140, 239, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 25),
            Container(
              width: 400,
              height: 100,
              child: Center(
                child: Text(
                  " Pick a Route !",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
            Container(
              width: 430,
              height: screenHeight * 0.722, // Adjusted height
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50), // No border on top right
                  bottomLeft: Radius.circular(0), // No border on bottom left
                  bottomRight: Radius.circular(0),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Destination",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "poppins",
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.blue),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(
                              Icons.search,
                              color: Colors.blue,
                            ),
                          ),
                          search(),
                        ],
                      ),
                    ),
                  ),
                  _buildRadio(),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: done_button(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(_selectedIndex, _onItemTapped),
    );
  }

  Expanded search() {
    return Expanded(
      child: TextFormField(
        style: TextStyle(
          fontSize: 10,
          fontFamily: "poppins",
        ),
        decoration: InputDecoration(
          fillColor: Color.fromRGBO(141, 141, 141, 0.443),
          border: InputBorder.none,
          hintText: 'Search destination here!',
          contentPadding: EdgeInsets.symmetric(vertical: 16),
        ),
        onChanged: (value) {
          setState(() {
            _searchText = value;
          });
        },
      ),
    );
  }

  Widget _buildRadio() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40,
        ),
        _buildRadioOption(1, "Best Route"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(2, "Fewer transfer"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(3, "Less walking"),
        SizedBox(
          height: 20,
        ),
        _buildRadioOption(4, "Wheelchair access"),
      ],
    );
  }

  Widget _buildRadioOption(int value, String label) {
    return Row(
      children: [
        Radio(
          value: value,
          groupValue: _value,
          onChanged: (newValue) {
            setState(() {
              _value = newValue as int;
            });
          },
        ),
        SizedBox(width: 10),
        Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontFamily: "poppins",
            fontWeight: FontWeight.w500,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}

class done_button extends StatelessWidget {
  const done_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Map()),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromRGBO(4, 140, 239, 1),
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        textStyle: TextStyle(fontSize: 16),
        minimumSize: Size(150, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Text(
        'Done',
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
