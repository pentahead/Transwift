import 'package:flutter/material.dart';
import 'package:transwift/assets/NavBar.dart';
import 'package:transwift/views/Trip/assets/radio_button.dart';
import 'package:transwift/views/Trip/map_trip.dart';

class MyTrip extends StatelessWidget {
  const MyTrip({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController destinationController =
        TextEditingController(); // Controller for destination input
    final ValueNotifier<String> selectedRouteOption =
        ValueNotifier<String>(''); // Controller for selected route option

    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40, bottom: 10),
              child: Center(
                child: Text(
                  "PICK A ROUTE !",
                  style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 2,
                      color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.1),
              child: Container(
                width: 772,
                height: 772,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                      child: Text(
                        "Destination",
                        style: TextStyle(
                          fontFamily: "poppins",
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                        controller: destinationController, // Set controller
                        decoration: const InputDecoration(
                          hintText: 'Search Destination here',
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.blue,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2.0),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: RadioButtons(
                        selectedOptionNotifier:
                            selectedRouteOption, // Pass the ValueNotifier
                      ),
                    ),
                    const SizedBox(
                      height: 175,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RouteMap(
                              destination: destinationController.text,
                              routeOption: selectedRouteOption.value,
                            ),
                          ),
                        ),
                        child: Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(
                              color: Colors.blue,
                              width: 2.0,
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Done',
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  letterSpacing: 1,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(
        selectedIndex: 1,
      ),
    );
  }
}
