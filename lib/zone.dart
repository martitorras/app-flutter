class ClimbingZone {
  String title, place;
  String imageURL, graphURL;
  int toDos, ticks;
  int latitude, longitude;
  int totalClimbs;
  int trad, sport, topRope, bouldering, other;

  ClimbingZone(
    this.title,
    this.place,
    this.imageURL,
    this.graphURL,
    this.toDos,
    this.ticks,
    this.latitude,
    this.longitude,
    this.totalClimbs,
    this.trad,
    this.sport,
    this.topRope,
    this.bouldering,
    this.other,
  );
}

final yosemite = ClimbingZone(
  'Yosemite National Park',
  'California',
  'assets/yosemite.jpg',
  'assets/graph.png',
  12,
  3,
  37744,
  -119599,
  1838,
  1235,
  268,
  111,
  584,
  23,
);
