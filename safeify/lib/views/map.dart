import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:geolocator/geolocator.dart';

class FullScreenMap extends StatefulWidget {
  @override
  _FullScreenMapState createState() => _FullScreenMapState();
}

class _FullScreenMapState extends State<FullScreenMap> {
  MapboxMapController mapController;
  LatLng _center;
  Position currentLocation;

  @override
  void initState() {
    super.initState();
    getUserLocation();
  }

  Future<Position> locateUser() async {
    return Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
  }

  getUserLocation() async {
      currentLocation = await locateUser();
      setState(() {
        _center = LatLng(currentLocation.latitude, currentLocation.longitude);
      });
  }

  void _onMapCreated(MapboxMapController controller){
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MapboxMap(
        onMapCreated: _onMapCreated,
        zoomGesturesEnabled: true,
        initialCameraPosition: CameraPosition(target: LatLng(_center.latitude, _center.longitude), zoom: 14),
        myLocationEnabled: true,
        trackCameraPosition: true,
      ),);
  }
}