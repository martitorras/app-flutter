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
        leading: Icon(
          Icons.arrow_back_ios,
          size: 30.0,
        ),
        title: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    BuildText(
                      text: '${zone.title} ',
                      fontSize: 16,
                      colors: Colors.white,
                      type: FontWeight.bold,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 18.0,
                    ),
                  ],
                ),
                SizedBox(height: 5),
                BuildText(
                  text: 'in ${zone.place}',
                  fontSize: 12,
                  colors: Colors.grey[400],
                ),
              ],
            ),
          ),
        ),
        actions: <Widget>[
          Icon(
            Icons.home,
            size: 30.0,
          ),
          SizedBox(width: 15),
        ],
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
                height: 45,
                child: Center(
                  child: BuildText(
                    text: 'View sub-areas',
                    fontSize: 18,
                    colors: Colors.grey[100],
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
                height: 45,
                child: Center(
                  child: BuildText(
                    text: 'Search routes',
                    fontSize: 18,
                    colors: Colors.grey[100],
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
                height: 45,
                child: Center(
                  child: BuildText(
                    text: 'Area Map',
                    fontSize: 18,
                    colors: Colors.grey[100],
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
                height: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.file_download,
                      color: Colors.white,
                      size: 20.0,
                    ),
                    BuildText(
                      text: 'Download',
                      fontSize: 18,
                      colors: Colors.grey[100],
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
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  color: Colors.black,
                  size: 30.0,
                ),
                BuildText(
                  text: 'Directions: ',
                  fontSize: 18,
                  type: FontWeight.bold,
                ),
                BuildText(
                  text: '${zone.latitude}, ${zone.longitude}',
                  fontSize: 18,
                  colors: Colors.blue,
                  dec: TextDecoration.underline,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    BuildText(
                      text: '${zone.totalClimbs} Total Climbs',
                      fontSize: 18,
                      type: FontWeight.bold,
                    ),
                    SizedBox(height: 4),
                    DoubleRow(
                      text1: 'Trad: ',
                      text2: '${zone.trad}',
                    ),
                    DoubleRow(
                      text1: 'Sport: ',
                      text2: '${zone.sport}',
                    ),
                    DoubleRow(
                      text1: 'Top Rope: ',
                      text2: '${zone.topRope}',
                    ),
                    DoubleRow(
                      text1: 'Bouldering: ',
                      text2: '${zone.bouldering}',
                    ),
                    DoubleRow(
                      text1: 'Other: ',
                      text2: '${zone.other}',
                    ),
                  ],
                ),
                Column(),
              ],
            ),
          ],
        ),
      ),
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
            child: Stack(
              //alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                Image.asset(
                  zone.imageURL,
                  fit: BoxFit.cover,
                ),
                Align(
                  alignment: Alignment(0.96, 0.4),
                  child: Container(
                    width: 120,
                    height: 17,
                    child: Center(
                      child: BuildText(
                        text: 'Download all photos',
                        fontSize: 12,
                        colors: Colors.black,
                      ),
                    ),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(2))),
                      color: Colors.grey[400].withAlpha(200),
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Container(),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.black38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
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
                                BuildText(
                                  text: 'Bookmark',
                                  fontSize: 14,
                                  colors: Colors.grey[400],
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
                                    child: BuildText(
                                      text: '${zone.toDos}',
                                      fontSize: 25,
                                      colors: Colors.grey[400],
                                    ),
                                  ),
                                ),
                                BuildText(
                                  text: 'To-Dos',
                                  fontSize: 14,
                                  colors: Colors.grey[400],
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
                                    child: BuildText(
                                      text: '${zone.ticks}',
                                      fontSize: 25,
                                      colors: Colors.grey[400],
                                    ),
                                  ),
                                ),
                                BuildText(
                                  text: 'Ticks',
                                  fontSize: 14,
                                  colors: Colors.grey[400],
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
                                BuildText(
                                  text: 'Share',
                                  fontSize: 14,
                                  colors: Colors.grey[400],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DoubleRow extends StatelessWidget {
  final String text1;
  final String text2;

  DoubleRow({
    @required this.text1,
    @required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        BuildText(
          text: '${this.text1}',
          fontSize: 16,
          type: FontWeight.bold,
        ),
        BuildText(
          text: '${this.text2}',
          fontSize: 16,
        ),
      ],
    );
  }
}

class BuildText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color colors;
  final FontWeight type;
  final TextDecoration dec;

  BuildText({
    @required this.text,
    @required this.fontSize,
    @optionalTypeArgs this.colors = Colors.black,
    @optionalTypeArgs this.type,
    @optionalTypeArgs this.dec,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '${this.text}',
      style: TextStyle(
        fontSize: this.fontSize,
        color: this.colors,
        fontWeight: this.type,
        decoration: this.dec,
      ),
    );
  }
}
