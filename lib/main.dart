import 'package:flutter/material.dart';
import 'package:transwift/homepage_body.dart';
import 'login_page.dart';
import 'package:transwift/Profile/profile.dart';
import 'package:transwift/Trip/my_trip.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Trans Swift',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const HomepageBody(),
        '/map': (context) => const MyTrip(),
        '/profile': (context) => const Profile(),
      },
    );
  }
}
