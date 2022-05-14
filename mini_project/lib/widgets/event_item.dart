import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mini_project/models/events_model.dart';
import 'package:provider/provider.dart';

import '../providers/event_finder_api.dart';
import '../pages/event_page.dart';

class EventItem extends StatelessWidget {
  final String id, type, title, performers, venue, genres;

  final DateTime datetimeUTC;

  EventItem(this.id, this.type, this.title, this.performers, this.venue,
      this.genres, this.datetimeUTC);

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<Events>(context, listen: false);
    String date = DateFormat.yMMMd().add_Hms().format(datetimeUTC);
    return ListTile(
      onTap: () {
        Navigator.pushNamed(context, EventPage.route, arguments: id);
      },
      leading: CircleAvatar(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: FittedBox(
            child: Text("\$$id"),
          ),
        ),
      ),
      title: Text("$title"),
      subtitle: Text("performed by : $performers"),
    );
  }
}
