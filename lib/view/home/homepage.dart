import 'package:flutter/material.dart';
import 'package:ozone/view/home/homebody.dart';

String selectedSensor = "Temperatur";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // HERE IS THE APP BAR WIDGET
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 23,
          ),
        ),
        backgroundColor: Color(0xffeef0f1),
        elevation: 0.0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
      ),
      drawer: Drawer(
        // HERE IS THE DRAWER MENU
        elevation: 10.0,
        child: Container(),
      ),
      body: HomeBody(),
    );
  }
}
