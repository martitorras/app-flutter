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
            textScaleFactor: 0.9,
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
      color: Colors.blue,
    );
  }
}

class _Middle extends StatelessWidget {
  final ClimbingZone zone;
  _Middle(this.zone);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
    );
  }
}

class _Image extends StatelessWidget {
  final ClimbingZone zone;
  _Image(this.zone);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Image.asset(
              zone.imageURL,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.bookmark_border,
                  color: Colors.grey,
                  size: 40.0,
                ),
                SizedBox(width: 60),
                 Icon(
                  Icons.favorite,
                  color: Colors.grey,
                  size: 40.0,
                ),
                SizedBox(width: 60),
                 Icon(
                  Icons.favorite,
                  color: Colors.grey,
                  size: 40.0,
                ),
                SizedBox(width: 60),
                 Icon(
                  Icons.favorite,
                  color: Colors.grey,
                  size: 40.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
