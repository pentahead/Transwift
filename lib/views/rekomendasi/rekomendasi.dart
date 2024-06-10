import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:transwift/provider/destination_provider.dart';
import 'package:transwift/views/rekomendasi/assets/rekomen_card.dart';

class Rekomendasi extends StatelessWidget {
  const Rekomendasi({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DestinationProvider()..fetchDestinations(),
      child: Scaffold(
        body: Container(
          color: Colors.blue,
          child: Stack(
            children: [
              Positioned(
                top: 115,
                right: 0,
                left: 0,
                child: Container(
                  height: 1000,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    ),
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: Consumer<DestinationProvider>(
                  builder: (context, provider, child) {
                    if (provider.isLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    return SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 55),
                          const Center(
                            child: Text(
                              "Rekomendasi",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "poppins",
                                fontWeight: FontWeight.w900,
                                fontSize: 36,
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Center(
                            child: SingleChildScrollView(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.height * 0.7,
                                child: ListView.builder(
                                  itemCount: provider.destinations.length,
                                  itemBuilder: (context, index) {
                                    final destination =
                                        provider.destinations[index];
                                    return Column(
                                      children: [
                                        RekomenCard(
                                          imageUrl: destination['imageUrl'] ??
                                              'image not found',
                                          name: destination['name'] ??
                                              'title not found',
                                          description:
                                              destination['description'] ??
                                                  'description not found',
                                        ),
                                        const SizedBox(height: 20),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
