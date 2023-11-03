class WeatherModel {
  final String city;
  final int temperature;
  final String condition;
  final int humidity;
  final double windSpeed;

  WeatherModel({
    required this.city,
    required this.temperature,
    required this.condition,
    required this.humidity,
    required this.windSpeed,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      city: json["city"],
      temperature: json["temperature"],
      condition: json["condition"],
      humidity: json["humidity"],
      windSpeed: json["windSpeed"],
    );
  }
}
