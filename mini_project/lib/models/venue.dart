import 'package:flutter/material.dart';
import 'location.dart';

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
