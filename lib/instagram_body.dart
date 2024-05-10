import 'package:flutter/material.dart';
import 'package:transwift/trip/MyTrip.dart';
import 'package:transwift/Booking/booking.dart';

class InstagramBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, // Changed to MainAxisAlignment.spaceBetween
            children: [
              Text(
                'Selamat Datang, User!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/user_profile.jpg'),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              prefixIcon: Icon(Icons.search,
                  color: Colors
                      .blue), // Mengubah warna ikon pencarian menjadi biru
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: Colors.blue), // Mengubah warna border menjadi biru
              ),
              filled: true,
              fillColor: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text('Services',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyTrip()),
                  );
                  // Implementasi fungsi untuk Start Trips
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.directions_car), // Ikon untuk Start Trips
                    Text('Start Trips'),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Booking()));
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.book_online),
                    Text('Booking'),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Tambahkan fungsi untuk Rekomendasi
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star),
                    Text('Rekomendasi'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
