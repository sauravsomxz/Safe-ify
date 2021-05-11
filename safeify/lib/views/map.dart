import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_sms/flutter_sms.dart';

class FullScreenMap extends StatefulWidget {
  @override
  _FullScreenMapState createState() => _FullScreenMapState();
}

List<String> recipents = ["8328854263", "7363873537"];

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

  void _sendSMS(String message, List<String> recipents) async {
    String _result = await sendSMS(message: message, recipients: recipents)
        .catchError((onError) {
      print(onError);
    });
    print(_result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MapboxMap(
        zoomGesturesEnabled: true,
        initialCameraPosition: CameraPosition(
            target: LatLng(_center.latitude, _center.longitude), zoom: 14),
        myLocationEnabled: true,
        trackCameraPosition: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _sendSMS("$_center", recipents);
          // print("Button Pressed");
        },
        elevation: 10.0,
        backgroundColor: Colors.red,
        child: Icon(Icons.warning),
      ),
    );
  }
}
