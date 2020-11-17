import 'package:flutter/material.dart';
import 'package:ozone/view/home/homepage.dart';

void main() => runApp(OZone());

class OZone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
