import 'dart:developer';

import 'package:geolocator/geolocator.dart';

class Location {
   double? latitude;
   double? longitude;

   Future<void> getCurrentLocation()  async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;

      log('mylog0', name: '$latitude :: $longitude');
    } catch (e) {
      await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    }
  }
}
