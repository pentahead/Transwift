import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserProvider with ChangeNotifier {
  String _name = 'guest';
  String _email = 'guest';
  String _phone = 'guest';
  String _address = 'guest'; // Add address field if needed

  String get name => _name;
  String get email => _email;
  String get phone => _phone;
  String get address => _address; // Getter for address

  Future<void> fetchUser(String userId) async {
    try {
      DocumentSnapshot userDoc = await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .get();
      if (userDoc.exists) {
        _name = userDoc['fullName'];
        _email = userDoc['email'];
        _phone = userDoc['phoneNumber'];
        _address = userDoc['address']; // Get address if present
        notifyListeners();
      }
    } catch (e) {
      print('Failed to fetch user: $e');
    }
  }

  Future<void> putUser(String userId, String name, String email, String phone,
      String address) async {
    try {
      await FirebaseFirestore.instance.collection('users').doc(userId).update({
        'fullName': name,
        'email': email,
        'phoneNumber': phone,
        'address': address, // Update address if needed
      });
      _name = name;
      _email = email;
      _phone = phone;
      _address = address; // Update address
      notifyListeners();
    } catch (e) {
      print('Failed to update user: $e');
    }
  }
}
