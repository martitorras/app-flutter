class ClimbingZone {
  String title, place;
  String imageURL, graphURL;
  int toDos, ticks;
  int latitude, longitude;
  int totalClimbs;
  int trad, sport, topRope, bouldering, other;

  ClimbingZone({
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
  });

ClimbingZone.fromJson(Map<String, dynamic>json):
  title = json['title'],
  place = json['place'],
  imageURL = json['imageURL'],
  graphURL = json['graphURL'],
  toDos = json['toDos'],
  ticks = json['ticks'],
  latitude = json['latitude'].toDouble(),
  longitude = json['longitude'].toDouble(),
  totalClimbs = json['totalClimbs'],
  trad = json['trad'],
  sport = json['sport'],
  topRope = json['topRope'],
  bouldering = json['bouldering'],
  other = json['other'];
}