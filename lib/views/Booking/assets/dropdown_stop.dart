import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:transwift/provider/route_provider.dart';

class DropdownStop extends StatelessWidget {
  const DropdownStop({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<RouteProvider>(context);

    return Center(
      child: Container(
        width: 350,
        height: 30,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(40),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: provider.selectedRoute,
            hint: const Text('Select Route'),
            onChanged: (String? newValue) {
              if (newValue != null) {
                provider.selectRoute(newValue);
              }
            },
            items:
                provider.routes.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(value),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
