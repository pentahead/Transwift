import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DestinationProvider with ChangeNotifier {
  List<Map<String, dynamic>> _destinations = [];
  bool _isLoading = false;

  List<Map<String, dynamic>> get destinations => _destinations;
  bool get isLoading => _isLoading;

  Future<void> fetchDestinations() async {
    _isLoading = true;
    notifyListeners();

    try {
      QuerySnapshot snapshot =
          await FirebaseFirestore.instance.collection('destination').get();
      if (snapshot.docs.isNotEmpty) {
        String destinationDocId = snapshot.docs.first.id;

        List<Map<String, dynamic>> fetchedDestinations = [];

        for (int i = 1; i <= 20; i++) {
          QuerySnapshot destinationSnapshot = await FirebaseFirestore.instance
              .collection('destination')
              .doc(destinationDocId)
              .collection('$i')
              .get();

          for (var doc in destinationSnapshot.docs) {
            fetchedDestinations.add(doc.data() as Map<String, dynamic>);
          }
        }

        _destinations = fetchedDestinations;
      }
    } catch (e) {
      print(e);
    }

    _isLoading = false;
    notifyListeners();
  }
}
