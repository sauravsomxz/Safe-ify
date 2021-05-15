import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:geolocator/geolocator.dart';
import 'package:twilio_flutter/twilio_flutter.dart';

class FullScreenMap extends StatefulWidget {
  @override
  _FullScreenMapState createState() => _FullScreenMapState();
}

class _FullScreenMapState extends State<FullScreenMap> {

  MapboxMapController mapController;
  LatLng _center;
  Position currentLocation;
  TwilioFlutter twilioFlutter;

  @override
  void initState() {
    super.initState();
    getUserLocation();

    twilioFlutter = TwilioFlutter(
        accountSid: 'AC14d8c13c2cd338bf1ef3a51fe00c2e7c',
        authToken: '166e9162adf3ed18f9d97519a143fa76',
        twilioNumber: '+18576665646',
    );
  }

  void sendSMS() async {
    twilioFlutter.sendSMS(
        toNumber: '+918328854263', // Accepted Numbers - +918328854263, +917363873537, +919762290291
        messageBody: '$_center'
    );
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
          sendSMS();
          // _sendSMS("$_center", recipents);
          // print("Button Pressed");
        },
        elevation: 10.0,
        backgroundColor: Colors.red,
        child: Icon(Icons.warning),
      ),
    );
  }
}
