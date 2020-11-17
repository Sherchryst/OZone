import 'package:flutter/material.dart';
import 'package:ozone/view/home/sensor.dart';

List<SensorModel> getsensor() {
  //fill here to had more sensors
  List<SensorModel> sensors = new List<SensorModel>();
  SensorModel sensorModel = new SensorModel();

  //1
  sensorModel.noOfSensor = 10;
  sensorModel.sensor = "Temperatur";
  sensorModel.backgroundColor = Color(0xff3cc6f1);
  sensors.add(sensorModel);

  sensorModel = new SensorModel();

  //2
  sensorModel.noOfSensor = 17;
  sensorModel.sensor = "Humidity";
  sensorModel.backgroundColor = Color(0xff56c4c4);
  sensors.add(sensorModel);

  sensorModel = new SensorModel();

  //3
  sensorModel.noOfSensor = 27;
  sensorModel.sensor = "Pluviometry";
  sensorModel.backgroundColor = Color(0xfff5bcba);
  sensors.add(sensorModel);

  sensorModel = new SensorModel();

  //4
  sensorModel.noOfSensor = 38;
  sensorModel.sensor = "Wind";
  sensorModel.backgroundColor = Color(0xffCE93D8);
  sensors.add(sensorModel);

  sensorModel = new SensorModel();

  //5
  sensorModel.noOfSensor = 49;
  sensorModel.sensor = "UV";
  sensorModel.backgroundColor = Color(0xffb388ff);
  sensors.add(sensorModel);

  sensorModel = new SensorModel();

  //6
  sensorModel.noOfSensor = 60;
  sensorModel.sensor = "pH sensor";
  sensorModel.backgroundColor = Color(0xffffe082);
  sensors.add(sensorModel);

  sensorModel = new SensorModel();

  return sensors;
}
