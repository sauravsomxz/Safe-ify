import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:geolocator/geolocator.dart';

class FullScreenMap extends StatefulWidget {

  @override
  _FullScreenMapState createState() => _FullScreenMapState();
}

class _FullScreenMapState extends State<FullScreenMap> {
  MapboxMapController mapController;

  void _onMapCreated(MapboxMapController controller){
    this.mapController = controller;
  }

  LatLng _center ;
  Position currentLocation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserLocation();
  }

  Future<Position> locateUser() async {
    return Geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }

  getUserLocation() async {
    currentLocation = await locateUser();
    setState(() {
      _center = LatLng(currentLocation.latitude, currentLocation.longitude);
    });
    print('center $_center');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MapboxMap(
        zoomGesturesEnabled: true,
        initialCameraPosition: CameraPosition(target: LatLng(_center.latitude, _center.longitude), zoom: 14),
      ),
    );
  }
}