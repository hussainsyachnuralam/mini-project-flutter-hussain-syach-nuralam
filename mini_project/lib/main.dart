import './providers/auth.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/pages/home_page.dart';
import 'pages/splash_screen.dart';
import 'package:provider/provider.dart';
import './pages/auth_page.dart';

void main() {
  runApp(EventFinder());
}

class EventFinder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Finder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
