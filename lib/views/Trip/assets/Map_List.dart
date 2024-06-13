import 'package:flutter/material.dart';

class MapList extends StatefulWidget {
  const MapList({super.key});

  @override
  State<MapList> createState() => _MapList();
}

class _MapList extends State<MapList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
        left: 20,
        right: 20,
      ),
      child: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: _buildTextOptions(),
          ),
        ),
      ),
    );
  }

  Widget _buildTextOptions() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40,
        ),
        TextOption("Pergi ke jalan Ahmad Yani"),
        SizedBox(
          height: 20,
        ),
        TextOption("Naik Bis Sugeng Rahayu jurusan jember"),
        SizedBox(
          height: 20,
        ),
        TextOption("Turun di terminal Tawang alun"),
        SizedBox(
          height: 20,
        ),
        TextOption("Pilih angkot jurusan Kampus"),
        SizedBox(
          height: 20,
        ),
        TextOption("Turun Di jalan Kalimantan"),
        SizedBox(
          height: 20,
        ),
        TextOption("Anda sudah Di tujuan"),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class TextOption extends StatelessWidget {
  final String label;

  const TextOption(this.label, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          Icons.circle,
          size: 8,
          color: Colors.blueAccent,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.black87,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),
          ),
        ),
      ],
    );
  }
}
