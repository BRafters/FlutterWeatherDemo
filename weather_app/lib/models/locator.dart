import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';

class Locator {
  String _latitude = "";
  String _longitude = "";

  /// Sets the latitude & longitude based on users location, if granted permission
  Future<void> acquireLocation() async {
    try {
      // Grab the Location of the user, with their permission
      LocationPermission permission = await Geolocator.requestPermission();
      Position pos;

      if (isGrantedLocation(permission)) {
        // Gets the users position on a low accuracy - (few miles around their location)
        pos = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.low);

        _latitude = pos.latitude.toString();
        _longitude = pos.longitude.toString();
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  /// Determines if the user granted access to their location
  bool isGrantedLocation(LocationPermission permission) {
    return permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse;
  }

  ////
  // Getters & Setters
  ////
  String getLat() {
    return _latitude;
  }

  String getLng() {
    return _longitude;
  }
}
