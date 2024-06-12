import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:location/location.dart' as loc;
import 'package:permission_handler/permission_handler.dart' as perm;
import 'package:transwift/homepage_body.dart';
import 'package:transwift/views/trip/assets/Map_List.dart';

class RouteMap extends StatefulWidget {
  const RouteMap({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RouteMapState createState() => _RouteMapState();
}

class _RouteMapState extends State<RouteMap> {
  late GoogleMapController mapController;
  LatLng? _jember;
  final LatLng _papuma = const LatLng(-8.444506, 113.570511);
  final Set<Polyline> _polylines = {};
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _requestLocationPermission();
  }

  Future<void> _requestLocationPermission() async {
    var status = await perm.Permission.location.request();

    if (status.isGranted) {
      _getCurrentLocation();
    } else {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _getCurrentLocation() async {
    loc.Location location = loc.Location();

    bool serviceEnabled;
    loc.PermissionStatus permissionGranted;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == loc.PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != loc.PermissionStatus.granted) {
        return;
      }
    }

    final loc.LocationData locationData = await location.getLocation();

    setState(() {
      _jember = LatLng(locationData.latitude!, locationData.longitude!);
      _getRoute();
    });
  }

  Future<void> _getRoute() async {
    const String baseUrl =
        'https://maps.googleapis.com/maps/api/directions/json';
    final String origin = '${_jember?.latitude},${_jember?.longitude}';
    final String destination = '${_papuma.latitude},${_papuma.longitude}';
    const String apiKey = 'AIzaSyAn-Dx8xBKOEodyVemjCPrkNQRyt0CAgvE';

    final String url =
        '$baseUrl?origin=$origin&destination=$destination&key=$apiKey';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final String polyline = data['routes'][0]['overview_polyline']['points'];
      _addPolyline(polyline);
    } else {
      throw Exception('Failed to load directions');
    }
  }

  void _addPolyline(String encodedPolyline) {
    final List<PointLatLng> points = _decodePolyline(encodedPolyline);
    final List<LatLng> polylineCoordinates =
        points.map((point) => LatLng(point.latitude, point.longitude)).toList();

    setState(() {
      _polylines.add(
        Polyline(
          polylineId: const PolylineId('route'),
          points: polylineCoordinates,
          color: Colors.blue,
          width: 5,
        ),
      );
      _isLoading = false; // Set loading to false after polylines are added
    });
  }

  List<PointLatLng> _decodePolyline(String encoded) {
    List<PointLatLng> poly = [];
    int index = 0, len = encoded.length;
    int lat = 0, lng = 0;

    while (index < len) {
      int b, shift = 0, result = 0;
      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);
      int dlat = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
      lat += dlat;

      shift = 0;
      result = 0;
      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);
      int dlng = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
      lng += dlng;

      poly.add(PointLatLng((lat / 1E5).toDouble(), (lng / 1E5).toDouble()));
    }
    return poly;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 40,
            right: 0,
            left: 0,
            child: SizedBox(
              width: 430,
              height: 350,
              child: _isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : _jember != null
                      ? GoogleMap(
                          initialCameraPosition: CameraPosition(
                            target: _jember!,
                            zoom: 10.0,
                          ),
                          onMapCreated: (GoogleMapController controller) {
                            mapController = controller;
                          },
                          polylines: _polylines,
                          markers: {
                            Marker(
                              markerId: const MarkerId('jember'),
                              position: _jember!,
                              infoWindow: const InfoWindow(title: 'Jember'),
                            ),
                            Marker(
                              markerId: const MarkerId('papuma'),
                              position: _papuma,
                              infoWindow: const InfoWindow(title: 'Papuma'),
                            ),
                          },
                        )
                      : Container(), // Empty container when location is null
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: 200,
              height: 80,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                color: Colors.blue,
              ),
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.search, size: 40, color: Colors.white),
                    SizedBox(width: 5),
                    Text(
                      " Nama Kota",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 350,
            right: 0,
            left: 0,
            child: Container(
              height: 500,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    width: 430,
                    height: 300,
                    child: MapList(), // Replace with your List widget
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomepageBody(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      textStyle: const TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 255, 255)),
                      minimumSize: const Size(150, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: const BorderSide(color: Colors.blue, width: 2.0),
                      ),
                    ),
                    child: const Text(
                      'Done',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PointLatLng {
  final double latitude;
  final double longitude;

  PointLatLng(this.latitude, this.longitude);
}
