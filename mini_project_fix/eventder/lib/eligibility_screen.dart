import 'package:flutter/material.dart';
import '../eligibility.dart';
import '../home.dart';

void main() => runApp(Eligibility());

class Eligibility extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: EligiblityScreen());
  }
}
