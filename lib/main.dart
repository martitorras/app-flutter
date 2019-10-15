import 'package:flutter/material.dart';
import 'package:exercise/zone.dart';
import 'package:flutter/rendering.dart';

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
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 180,
                height: 50,
                child: Center(
                  child: Text(
                    'View sub-areas',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: Colors.blue[800],
                ),
              ),
              Container(
                width: 180,
                height: 50,
                child: Center(
                  child: Text(
                    'Search routes',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: Colors.blue[800],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 180,
                height: 50,
                child: Center(
                  child: Text(
                    'Area Map',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: Colors.blue[800],
                ),
              ),
              Container(
                width: 180,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.file_download,
                      color: Colors.white,
                      size: 20.0,
                    ),
                    Text(
                      'Download',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: Colors.blue[800],
                ),
              ),
            ],
          ),
        ],
      ),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                /*SizedBox(
                  width: 10,
                ),*/
                Column(
                  children: <Widget>[
                    SizedBox(height: 5),
                    Container(
                      child: Center(
                        child: Icon(
                          Icons.bookmark_border,
                          color: Colors.grey[400],
                          size: 30.0,
                        ),
                      ),
                    ),
                    Text(
                      'Bookmark',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
                VerticalDivider(
                  color: Colors.grey[400],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 5),
                    Container(
                      child: Center(
                        child: Text(
                          '${zone.toDos}',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'To-Dos',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
                VerticalDivider(
                  color: Colors.grey[400],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 5),
                    Container(
                      child: Center(
                        child: Text(
                          '${zone.ticks}',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Ticks',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
                VerticalDivider(
                  color: Colors.grey[400],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 5),
                    Container(
                      child: Center(
                        child: Icon(
                          Icons.share,
                          color: Colors.grey[400],
                          size: 30.0,
                        ),
                      ),
                    ),
                    Text(
                      'Share',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
                /*SizedBox(
                  width: 10,
                ),*/
              ],
            ),
          )
        ],
      ),
    );
  }
}
