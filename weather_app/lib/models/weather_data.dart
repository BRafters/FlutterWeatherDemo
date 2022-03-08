import 'package:flutter/material.dart';

class WeatherData {
  // int _highTemp;
  // int _lowTemp;
  // int _currentTemp;
  // int _windSpeed;
  // String _windDirection;
  // String _locationName;
  //
  // /// Constructor will have the API results passed in and will parse them into variables
  // WeatherData(){
  //  _highTemp = 0;
  //  _lowTemp = 0;
  //  _currentTemp = 0;
  //  _windSpeed = 0;
  //  _windDirection = "";
  //  _locationName = "";
  // }

  /// Takes the weather API URL and formats it to include our location values
  static String parseWeatherApiUrl(String url, String lat, String lng){
    url = url.replaceAll("{lat}", lat);
    url = url.replaceAll("{lon}", lng);

    print(url);
    
    return url;
  }
}