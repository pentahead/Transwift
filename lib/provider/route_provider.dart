import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RouteProvider with ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final List<String> _routes = [];
  List<String> get routes => _routes;

  List<String> _stops = [];
  List<String> get stops => _stops;

  String? _selectedRoute;
  String? get selectedRoute => _selectedRoute;

  String? _selectedStops;
  String? get selectedStops => _selectedStops;

  RouteProvider() {
    fetchInitialData();
  }

  Future<void> fetchInitialData() async {
    await fetchStops();
    if (_stops.isNotEmpty) {
      selectStops(
          _stops.first); // Select the first stop by default if available
    }
  }

  Future<void> fetchStops() async {
    try {
      final querySnapshot = await _firestore.collection('route').get();
      _stops = querySnapshot.docs
          .expand((doc) => doc.data().values)
          .cast<String>()
          .toList();
      notifyListeners();
    } catch (e) {
      print('Error fetching stops: $e');
    }
  }

  Future<void> fetchRoutes(String stopName) async {
    _routes.clear();
    try {
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
    } catch (e) {
      print('Error fetching routes: $e');
    }
  }

  void selectRoute(String route) {
    _selectedRoute = route;
    notifyListeners();
  }

  void selectStops(String stop) {
    _selectedStops = stop;
    fetchRoutes(stop);
    notifyListeners();
  }
}
