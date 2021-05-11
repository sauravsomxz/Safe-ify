import 'package:flutter/material.dart';
import 'package:safeify/views/map.dart';

import 'add_mates.dart';

class HomePage extends StatefulWidget {
  static String id = 'homepage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void handleClick(String value){
    switch(value){
      case 'Add Mates':
        Navigator.pushNamed(context, AddMates.id);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {'Add Mates'}.map((String choice){
                return PopupMenuItem<String>(
                  value:choice,
                  child:Text(choice),
                );
              }).toList();
            },
          ),
        ],
        backgroundColor: Colors.red,
        title: Text(
          'Your location',
        ),
      ),

      body: FullScreenMap(),

    );
  }
}
