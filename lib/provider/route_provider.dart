import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RouteProvider with ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  List<String> _routes = [];
  List<String> get routes => _routes;

  List<String> _stops = [];
  List<String> get stops => _stops;

  String? _selectedRoute;
  String? get selectedRoute => _selectedRoute;

  String? _selectedStops;
  String? get selectedStops => _selectedStops;

  RouteProvider() {
    fetchStops(selectedStops!);
  }

  Future<void> fetchStops(String stopName) async {
    final querySnapshot = await _firestore.collection('route').get();
    _stops = querySnapshot.docs
        .expand((doc) => doc.data().values)
        .cast<String>()
        .toList();
    notifyListeners();
  }

  Future<void> fetchRoutes(String stopName) async {
    _routes.clear();
    final routeDoc = await _firestore.collection('route').get();

    if (routeDoc.docs.isNotEmpty) {
      String routeDocId = routeDoc.docs.first.id;

      final routeCollections = await _firestore
          .collection('route')
          .doc(routeDocId)
          .collection(stopName)
          .get();

      for (var routeDoc in routeCollections.docs) {
        _routes.addAll(routeDoc.data().values.cast<String>());
      }

      notifyListeners();
    }
  }

  void selectRoute(String stop) {
    _selectedRoute = stop;
    fetchRoutes(stop);
    notifyListeners();
  }

  void selectStops(String stop) {
    _selectedStops = stop;
    fetchStops(stop);
    notifyListeners();
  }
}
