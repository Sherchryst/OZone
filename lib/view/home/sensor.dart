import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SensorModel {
  String sensor;
  int noOfSensor;
  Color backgroundColor;
  SensorModel({this.sensor, this.noOfSensor, this.backgroundColor});
}

class SensorsTile extends StatelessWidget {
  final String sensor;
  final int noOfSensor;
  final Color backColor;
  SensorsTile(
      {@required this.sensor,
      @required this.noOfSensor,
      @required this.backColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        /*onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DoctorsInfo()));
      },*/
        child: Container(
      width: 150,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          color: backColor, borderRadius: BorderRadius.circular(24)),
      padding: EdgeInsets.only(top: 16, right: 16, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            sensor,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            "$noOfSensor Sensor",
            style: TextStyle(color: Colors.white, fontSize: 13),
          ),
        ],
      ),
    ));
  }
}
