import 'package:flutter/material.dart';
import 'package:safeify/views/map.dart';

class HomePage extends StatefulWidget {
  static String id = 'homepage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return FullScreenMap();
  }
}
