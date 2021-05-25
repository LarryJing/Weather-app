import 'package:geolocator/geolocator.dart';

class Location {
  double _lat, _long;
  Location();

  Future<void> getLocation() async {
    try {
      Geolocator geo = Geolocator();
      Position pos =
          await geo.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      _lat = pos.latitude;
      _long = pos.longitude;
    } catch (e) {
      print(e);
    }
  }

  double getLong() {
    return _long;
  }

  double getLat() {
    return _lat;
  }
}
