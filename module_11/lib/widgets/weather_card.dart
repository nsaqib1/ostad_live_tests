import 'package:flutter/material.dart';
import 'package:module_11/models/weather_model.dart';

class WeatherCard extends StatelessWidget {
  final WeatherModel weather;
  const WeatherCard({super.key, required this.weather});

  final commontStyle = const TextStyle(fontSize: 16, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "City: ${weather.city}",
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              "Temperature: ${weather.temperature}",
              style: commontStyle,
            ),
            Text(
              "Condition: ${weather.condition}",
              style: commontStyle,
            ),
            Text(
              "Humidity: ${weather.humidity}",
              style: commontStyle,
            ),
            Text(
              "WindSpeed: ${weather.windSpeed}",
              style: commontStyle,
            ),
          ],
        ),
      ),
    );
  }
}
