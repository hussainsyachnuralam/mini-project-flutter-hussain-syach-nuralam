import 'package:flutter/material.dart';

class Events {
  String type, datetimeUtc, datetimeLocal, title, description;
  List<Performers>? performers;
  Venue? venue;
  int id;

  Events(
      {@required this.id,
      @required this.type,
      @required this.datetimeUtc,
      @required this.datetimeLocal,
      @required this.description,
      @required this.performers});
}

class Venue {
  String state, name, address, country, city;
  int id, capacity;
  Location? location;

  Venue(
      {@required this.state,
      @required this.name,
      @required this.address,
      @required this.country,
      @required this.city,
      @required this.id,
      @required this.capacity,
      @required this.location});
}

class Location {
  double lat, lon;

  Location({@required this.lat, @required this.lon});
}

class Performers {
  String type, name, image, shortName;
  int id, popularity;
  List<Genres>? genres;
  Images? images;
  Location? location;

  Performers(
      {@required this.type,
      @required this.name,
      @required this.id,
      @required this.image,
      @required this.images,
      @required this.genres,
      @required this.location,
      @required this.popularity,
      @required this.shortName});
}

class Genres {
  int id;
  String name, slug, image;

  Genres(
      {@required this.id,
      @required this.name,
      @required this.slug,
      @required this.image});
}

class Images {
  String s1200x525;
  String s1200x627;
  String s136x136;
  String s500700;
  String s800x320;
  String banner;
  String block;
  String criteo130160;
  String criteo170235;
  String criteo205100;
  String criteo400300;
  String fb100x72;
  String fb600315;
  String huge;
  String ipadEventModal;
  String ipadHeader;
  String ipadMiniExplore;
  String mongo;
  String squareMid;
  String triggitFbAd;
  String s1920x1200;
  String s450x0;
  String s450x450;
  String s720x450;

  Images(
      {this.s1200x525,
      this.s1200x627,
      this.s136x136,
      this.s500700,
      this.s800x320,
      this.banner,
      this.block,
      this.criteo130160,
      this.criteo170235,
      this.criteo205100,
      this.criteo400300,
      this.fb100x72,
      this.fb600315,
      this.huge,
      this.ipadEventModal,
      this.ipadHeader,
      this.ipadMiniExplore,
      this.mongo,
      this.squareMid,
      this.triggitFbAd,
      this.s1920x1200,
      this.s450x0,
      this.s450x450,
      this.s720x450});
}

class Meta {
  int total, took, page, perPage;

  Meta(
      {@required this.total,
      @required this.took,
      @required this.page,
      @required this.perPage});
}
