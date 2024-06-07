import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/weather.dart';
import 'package:transwift/APi.dart';

class weather extends StatefulWidget {
  const weather({super.key});

  @override
  State<weather> createState() => _HomePageState();
}

class _HomePageState extends State<weather> {
  final WeatherFactory _wf = WeatherFactory(OpenWheather_API_KEY);

  Future<Weather> _fetchWeather() async {
    return await _wf.currentWeatherByCityName("Jember");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Weather>(
      future: _fetchWeather(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        } else if (!snapshot.hasData) {
          return Center(
            child: Text('No data available'),
          );
        }

        final _weather = snapshot.data!;

        return _buildUI(_weather);
      },
    );
  }

  Widget _buildUI(Weather _weather) {
    return Center(
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.8,
        height: MediaQuery.sizeOf(context).height * 0.48,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 2, color: Colors.blue)),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [_locationHeader(_weather), _jam(_weather)],
              ),
            ),
            _dateTimeInfo(_weather),
            _weatherIcon(_weather),
            _suhu(_weather),
            _inpo(_weather),
          ],
        ),
      ),
    );
  }

  Widget _locationHeader(Weather _weather) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.blue),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            _weather.areaName ?? "",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }

  Widget _jam(Weather _weather) {
    DateTime now = _weather.date!;
    return Text(
      DateFormat("h:mm a").format(now),
      style: TextStyle(fontSize: 35),
    );
  }

  Widget _dateTimeInfo(Weather _weather) {
    DateTime now = _weather.date!;
    return Center(
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  DateFormat("EEEE").format(now),
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                Text(
                  " ${DateFormat("d.M.y").format(now)}",
                  style: TextStyle(fontWeight: FontWeight.w700),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _weatherIcon(Weather _weather) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 0.1,
            width: MediaQuery.sizeOf(context).width * 0.7,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "http://openweathermap.org/img/wn/${_weather.weatherIcon}@4x.png"),
              ),
            ),
          ),
          Text(
            _weather.weatherDescription ?? "",
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }

  Widget _suhu(Weather _weather) {
    return Center(
      child: Text(
        "${_weather.temperature?.celsius?.toStringAsFixed(0)}° C",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _inpo(Weather _weather) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.15,
        width: MediaQuery.sizeOf(context).width * 0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.blue),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Max : ${_weather.tempMax?.celsius?.toStringAsFixed(0)}° C",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "Min : ${_weather.tempMin?.celsius?.toStringAsFixed(0)}° C",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Kelembaban : ${_weather.humidity?.toStringAsFixed(0)} %",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "Angin : ${_weather.windSpeed?.toStringAsFixed(0)} m/s",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
