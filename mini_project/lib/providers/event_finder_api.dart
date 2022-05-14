import 'dart:convert';
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import '../models/events_model.dart';

class EventFinderAPI {
  static Future<List<Events>> getEvent() async {
    final response = await Dio().get(
        "https://api.seatgeek.com/2/events?client_id=MjY3NTU1NjJ8MTY1MTEzMDc3MC42NjUzMDEz");

    List<Events> events = (response.data as List)
        .map(
          (e) => Events(
            type: e['type'],
            id: e['id'],
            datetimeUtc: e['datetimeUTC'],
            datetimeLocal: e['datetimeLocal'],
            venue: e['venue'],
            description: e['description'],
            title: e['title'],
            performers: e['performers'],
          ),
        )
        .toList();
    return events;
  }

  static Future<List<Venue>> getVenue() async {
    final response = await Dio().get(
        "https://api.seatgeek.com/2/events?client_id=MjY3NTU1NjJ8MTY1MTEzMDc3MC42NjUzMDEz");

    List<Venue> venues = (response.data as List)
        .map(
          (v) => Venue(
            state: v['state'],
            id: v['id'],
            name: v['name'],
            nameV2: v['nameV2'],
            address: v['address'],
            country: v['country'],
            city: v['city'],
            capacity: v['capacity'],
            location: v['location'],
          ),
        )
        .toList();
    return venues;
  }

  static Future<List<Location>> getLocation() async {
    final response = await Dio().get(
        "https://api.seatgeek.com/2/events?client_id=MjY3NTU1NjJ8MTY1MTEzMDc3MC42NjUzMDEz");

    List<Location> locations = (response.data as List)
        .map(
          (l) => Location(
            lat: l['lat'],
            lon: l['lon'],
          ),
        )
        .toList();
    return locations;
  }

  static Future<List<Performers>> getPerformer() async {
    final response = await Dio().get(
        "https://api.seatgeek.com/2/events?client_id=MjY3NTU1NjJ8MTY1MTEzMDc3MC42NjUzMDEz");

    List<Performers> performers = (response.data as List)
        .map(
          (p) => Performers(
            type: p['type'],
            name: p['name'],
            image: p['image'],
            images: p['images'],
            shortName: p['shortName'],
            genres: p['genres'],
            popularity: p['popularity'],
            location: p['location'],
            id: p['id'],
          ),
        )
        .toList();
    return performers;
  }

  static Future<List<Images>> getImage() async {
    final response = await Dio().get(
        "https://api.seatgeek.com/2/events?client_id=MjY3NTU1NjJ8MTY1MTEzMDc3MC42NjUzMDEz");

    List<Images> images = (response.data as List)
        .map(
          (i) => Images(
            s1200x525: i['s1200x525'],
            s1200x627: i['s1200x627'],
            s136x136: i['s136x136'],
            s500700: i['s500700'],
            s800x320: i['s800x320'],
            banner: i['banner'],
            block: i['block'],
            criteo130160: i['criteo130160'],
            criteo170235: i['criteo170235'],
            criteo205100: i['criteo205100'],
            criteo400300: i['criteo400300'],
            fb100x72: i['fb100x72'],
            fb600315: i['fb600315'],
            huge: i['huge'],
            ipadEventModal: i['ipadEventModal'],
            ipadHeader: i['ipadHeader'],
            ipadMiniExplore: i['ipadMiniExplore'],
            mongo: i['mongo'],
            squareMid: i['squareMid'],
            triggitFbAd: i['triggitFbAd'],
            s1920x1200: i['s1920x1200'],
            s450x0: i['s450x0'],
            s450x450: i['s450x450'],
            s720x450: i['s720x450'],
          ),
        )
        .toList();
    return images;
  }

  static Future<List<Genres>> getGenre() async {
    final response = await Dio().get(
        "https://api.seatgeek.com/2/events?client_id=MjY3NTU1NjJ8MTY1MTEzMDc3MC42NjUzMDEz");

    List<Genres> genres = (response.data as List)
        .map(
          (g) => Genres(
            id: g['id'],
            slug: g['slug'],
            name: g['name'],
            image: g['image'],
          ),
        )
        .toList();
    return genres;
  }

  inisialData() {}
}
