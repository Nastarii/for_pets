import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class LocationDisplay extends StatefulWidget {
  const LocationDisplay({super.key});

  @override
  State<LocationDisplay> createState() => _LocationDisplayState();
}

class _LocationDisplayState extends State<LocationDisplay> {

  Future<Placemark> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    permission = await Geolocator.checkPermission();
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    if(permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high); 
    List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
    return placemarks[0];
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Placemark>(
          future: _determinePosition(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.connectionState == ConnectionState.done) {
              return Center(
                child: Text(
                    '${snapshot.data!.locality}, ${snapshot.data!.isoCountryCode}',
                    style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.2)
                  ),
              );
            } else {
              return const SizedBox.shrink();
            }
          });
  }
}