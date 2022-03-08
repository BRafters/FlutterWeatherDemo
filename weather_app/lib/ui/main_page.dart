import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/models/api_handler.dart';
import 'package:weather_app/models/locator.dart';
import 'package:weather_app/models/weather_data.dart';
import 'package:weather_app/ui/header_area.dart';

class MainWeatherScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainWeatherScreen();
}

class _MainWeatherScreen extends State<MainWeatherScreen> {
  // These values get updated when flutter detects a change
  Locator locator = Locator();
  WeatherData data = WeatherData();
  late APIHandler handler;



  @override
  void initState(){
    getLocationAndWeatherData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.red,
          // We want a huge container for the photo and weather data, and the hourly forecast. Column works here
          body: Column(
            children: [
              Menu(),
            ],
          ),
        ),
      ),
    );
  }

  /// Grabs the users current location and places it into the api call to open weather map
  Future<void> getLocationAndWeatherData() async {
    await locator.acquireLocation();
    handler = APIHandler(WeatherData.parseWeatherApiUrl(kApiUrl, locator.getLat(), locator.getLng()));
    handler.makeRequest();
  }
}

// TODO: Create the current weather section
// TODO: Create the hourly forecast section
// TODO: Create the 7-day forecast page

// Cloudy mountains photo by: Fabrizio Conti - @conti_photos - Unsplash
// Sunny mountains photo by: Jeremy Allouche - @jerroams - Unsplash
// Rainy road photo by: Filip Zrnzević - @filipz - Unsplash
// Sun cloud mountain photo by: Char Beck - @charbeck - Unsplash
// Overcast road photo by: Joe Gardner - @josephgardnerphotography - Unsplash
// Thunder clouds photo by: Karsten Würth - @karsten_wuerth - Unsplash
// Snow mountains photo by: William Topa - @williamtopa - Unsplash
