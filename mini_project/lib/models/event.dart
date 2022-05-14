import 'package:flutter/material.dart';

class Events {
  String? type, datetimeUtc, datetimeLocal, title, description;
  List<Performers>? performers;
  Venue? venue;
  int? id;

  Events(
      {@required this.id,
      @required this.type,
      @required this.datetimeUtc,
      @required this.datetimeLocal,
      @required this.description,
      @required this.performers});

  Events.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    id = json['id'];
    datetimeUtc = json['datetime_utc'];
    venue = json['venue'] != null ? new Venue.fromJson(json['venue']) : null;
    if (json['performers'] != null) {
      performers = <Performers>[];
      json['performers'].forEach((v) {
        performers!.add(new Performers.fromJson(v));
      });
    }
    datetimeLocal = json['datetime_local'];
    title = json['title'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['id'] = this.id;
    data['datetime_utc'] = this.datetimeUtc;
    if (this.venue != null) {
      data['venue'] = this.venue!.toJson();
    }
    if (this.performers != null) {
      data['performers'] = this.performers!.map((v) => v.toJson()).toList();
    }
    data['datetime_local'] = this.datetimeLocal;
    data['title'] = this.title;
    data['description'] = this.description;
    return data;
  }
}

class Venue {
  String? state, name, nameV2, address, country, city;
  int? id, capacity;
  Location? location;

  Venue(
      {@required this.state,
      @required this.name,
      @required this.nameV2,
      @required this.address,
      @required this.country,
      @required this.city,
      @required this.id,
      @required this.capacity,
      @required this.location});

  Venue.fromJson(Map<String, dynamic> json) {
    state = json['state'];
    nameV2 = json['name_v2'];
    name = json['name'];
    location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    address = json['address'];
    country = json['country'];
    city = json['city'];
    id = json['id'];
    capacity = json['capacity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['state'] = this.state;
    data['name_v2'] = this.nameV2;
    data['name'] = this.name;
    if (this.location != null) {
      data['location'] = location!.toJson();
    }
    data['address'] = this.address;
    data['country'] = this.country;
    data['city'] = this.city;
    data['id'] = this.id;
    data['capacity'] = this.capacity;
    return data;
  }
}

class Location {
  double? lat, lon;

  Location({@required this.lat, @required this.lon});

  Location.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lon = json['lon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    return data;
  }
}

class Performers {
  String? type, name, image, shortName;
  int? id, popularity;
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

  Performers.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    name = json['name'];
    image = json['image'];
    id = json['id'];
    images =
        json['images'] != null ? new Images.fromJson(json['images']) : null;
    shortName = json['short_name'];
    popularity = json['popularity'];
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    if (json['genres'] != null) {
      genres = <Genres>[];
      json['genres'].forEach((v) {
        genres!.add(new Genres.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['name'] = this.name;
    data['image'] = this.image;
    data['id'] = this.id;
    if (this.images != null) {
      data['images'] = this.images!.toJson();
    }
    data['short_name'] = this.shortName;
    data['popularity'] = this.popularity;
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    if (this.genres != null) {
      data['genres'] = this.genres!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Genres {
  int? id;
  String? name, slug, image;

  Genres(
      {@required this.id,
      @required this.name,
      @required this.slug,
      @required this.image});

  Genres.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['image'] = this.image;
    return data;
  }
}

class Images {
  String? s1200x525;
  String? s1200x627;
  String? s136x136;
  String? s500700;
  String? s800x320;
  String? banner;
  String? block;
  String? criteo130160;
  String? criteo170235;
  String? criteo205100;
  String? criteo400300;
  String? fb100x72;
  String? fb600315;
  String? huge;
  String? ipadEventModal;
  String? ipadHeader;
  String? ipadMiniExplore;
  String? mongo;
  String? squareMid;
  String? triggitFbAd;
  String? s1920x1200;
  String? s450x0;
  String? s450x450;
  String? s720x450;

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

  Images.fromJson(Map<String, dynamic> json) {
    s1200x525 = json['1200x525'];
    s1200x627 = json['1200x627'];
    s136x136 = json['136x136'];
    s500700 = json['500_700'];
    s800x320 = json['800x320'];
    banner = json['banner'];
    block = json['block'];
    criteo130160 = json['criteo_130_160'];
    criteo170235 = json['criteo_170_235'];
    criteo205100 = json['criteo_205_100'];
    criteo400300 = json['criteo_400_300'];
    fb100x72 = json['fb_100x72'];
    fb600315 = json['fb_600_315'];
    huge = json['huge'];
    ipadEventModal = json['ipad_event_modal'];
    ipadHeader = json['ipad_header'];
    ipadMiniExplore = json['ipad_mini_explore'];
    mongo = json['mongo'];
    squareMid = json['square_mid'];
    triggitFbAd = json['triggit_fb_ad'];
    s1920x1200 = json['1920x1200'];
    s450x0 = json['450x0'];
    s450x450 = json['450x450'];
    s720x450 = json['720x450'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['1200x525'] = this.s1200x525;
    data['1200x627'] = this.s1200x627;
    data['136x136'] = this.s136x136;
    data['500_700'] = this.s500700;
    data['800x320'] = this.s800x320;
    data['banner'] = this.banner;
    data['block'] = this.block;
    data['criteo_130_160'] = this.criteo130160;
    data['criteo_170_235'] = this.criteo170235;
    data['criteo_205_100'] = this.criteo205100;
    data['criteo_400_300'] = this.criteo400300;
    data['fb_100x72'] = this.fb100x72;
    data['fb_600_315'] = this.fb600315;
    data['huge'] = this.huge;
    data['ipad_event_modal'] = this.ipadEventModal;
    data['ipad_header'] = this.ipadHeader;
    data['ipad_mini_explore'] = this.ipadMiniExplore;
    data['mongo'] = this.mongo;
    data['square_mid'] = this.squareMid;
    data['triggit_fb_ad'] = this.triggitFbAd;
    data['1920x1200'] = this.s1920x1200;
    data['450x0'] = this.s450x0;
    data['450x450'] = this.s450x450;
    data['720x450'] = this.s720x450;
    return data;
  }
}

class Meta {
  int? total, took, page, perPage;

  Meta(
      {@required this.total,
      @required this.took,
      @required this.page,
      @required this.perPage});

  Meta.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    took = json['took'];
    page = json['page'];
    perPage = json['per_page'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    data['took'] = this.took;
    data['page'] = this.page;
    data['per_page'] = this.perPage;
    return data;
  }
}
