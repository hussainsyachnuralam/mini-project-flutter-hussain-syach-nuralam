import 'dart:convert';
import 'package:flutter/material.dart';
import '../models/events_model.dart';
import 'package:http/http.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  List<Events> values = [
    'assets/img01.png',
    'assets/img02.png',
    'assets/img03.png',
    'assets/img04.png',
    'assets/img05.png',
    'assets/img06.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Event'),
        ),
        body: Container(
          child: GridView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => EventsModel(
                                events: values[index],
                              ))));
                },
                child: Card(
                  elevation: 10,
                  child: Center(
                    child: Image.asset(values[index]),
                  ),
                ),
              );
            },
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          ),
        ));
  }
}
