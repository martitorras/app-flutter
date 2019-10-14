import 'dart:io';

import 'package:flutter/material.dart';
import 'package:exercise/zone.dart';

void main() {
  runApp(ZoneInfoApp());
}

class ZoneInfoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Zone(yosemite),
    );
  }
}

class Zone extends StatelessWidget {
  final ClimbingZone zone;
  Zone(this.zone);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            zone.title,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(flex: 4, child: _Image(zone)),
          Expanded(flex: 3, child: _Middle(zone)),
          Expanded(flex: 2, child: _Buttons(zone)),
        ],
      ),
    );
  }
}

class _Buttons extends StatelessWidget {
  final ClimbingZone zone;
  _Buttons(this.zone);

  @override
  Widget build(BuildContext context) {
    return Container(
       color: Colors.yellow,
    );
  }
}

class _Middle extends StatelessWidget {
  final ClimbingZone zone;
  _Middle(this.zone);

  @override
  Widget build(BuildContext context) {
    return Container(
       color: Colors.red,
    );
  }
}

class _Image extends StatelessWidget {
  final ClimbingZone zone;
  _Image(this.zone);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Image.asset(
              zone.imageURL,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
              ],
            ),
          )
        ],
      ),
    );
  }
}
