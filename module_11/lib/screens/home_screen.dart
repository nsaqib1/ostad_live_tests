import 'package:flutter/material.dart';
import 'package:module_11/data.dart';
import 'package:module_11/models/weather_model.dart';
import 'package:module_11/widgets/weather_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<WeatherModel> _weathers = [];

  getData() {
    for (final weather in data) {
      _weathers.add(WeatherModel.fromJson(weather));
    }
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather Info App"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return WeatherCard(weather: _weathers[index]);
        },
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: _weathers.length,
      ),
    );
  }
}
