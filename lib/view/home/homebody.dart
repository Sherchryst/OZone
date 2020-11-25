import 'package:flutter/material.dart';
import 'package:ozone/data/products.dart';
import 'package:ozone/view/home/homepage.dart';
import 'package:ozone/data/sensors.dart';
import 'package:ozone/view/home/product.dart';
import 'package:ozone/view/home/sensor.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  List<ProductModel> products;
  List<SensorModel> sensors;
  List<String> sensor = ["Now", "today", "15 Days", "30 Days", "by Hour"];
  @override
  void initState() {
    super.initState();
    sensors = getsensor();
    products = getproduct();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // HOME PAGE CONTAINER
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        child: Column(
          // HOME PAGE COLUMN
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // HOME PAGE COLUMN CHILDREN
            SizedBox(height: 19), // EMPTY SPACE SIZE: 19
            Container(
              // SEARCH BAR
              padding: EdgeInsets.symmetric(horizontal: 24),
              height: 38,
              decoration: BoxDecoration(
                  // SEARCH BAR DECORATION
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Color(0xff707171), width: 1)),
              child: Row(
                // SEARCH BAR ELEMT
                children: <Widget>[
                  Icon(Icons.search), // SEARCH ICON
                  SizedBox(
                    // EMPTY SPACE SIZE:10
                    width: 10,
                  ),
                  Text(
                    // SEACH TEXT
                    "Search",
                    style: TextStyle(
                      color: Color(0xff707171),
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              // EMPTY SPACE SIZE: 30
              height: 30,
            ),
            Text(
              "Sensor",
              style: TextStyle(
                  // sensor TEXT
                  color: Color(0xff707171),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              // EMPTY SPACE SIZE: 19
              height: 19,
            ),
            Container(
              // SENSOR CONTAINER
              height: 25,
              child: ListView.builder(
                  // SENSOR LISTVIEW
                  itemCount: sensor.length,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    // SENSOR LISTVIEW BUILDER
                    return TimeTile(
                      //Function return sensors on home page
                      sensor: sensor[index],
                      isSelected: selectedSensor == sensor[index],
                      context: this,
                    );
                  }),
            ),
            SizedBox(
              // EMPTY SPACE
              height: 20,
            ),
            Container(
              height: 250,
              child: ListView.builder(
                itemCount: sensors.length,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SensorsTile(
                    sensor: sensors[index].sensor,
                    noOfSensor: sensors[index].noOfSensor,
                    backColor: sensors[index].backgroundColor,
                  );
                },
              ),
            ),
            SizedBox(
              // EMPTY SPACE
              height: 20,
            ),
            Text(
              "Products",
              style: TextStyle(
                  //Title products list
                  color: Color(0xff707171),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              // EMPTY SPACE
              height: 20,
            ),
            Container(
              height: 180,
              child: ListView.builder(
                  itemCount: products.length,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ProductTile(
                      //Products list
                      nameOfProduction: products[index].nameOfProduction,
                      variety: products[index].variety,
                      density: products[index].density,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class TimeTile extends StatefulWidget {
  final String sensor;
  final bool isSelected;
  final _HomeBodyState context;
  TimeTile({this.sensor, this.isSelected, this.context});

  @override
  _TimeTileState createState() => _TimeTileState();
}

class _TimeTileState extends State<TimeTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Action when sensor is tap
        widget.context.setState(() {
          selectedSensor = widget.sensor;
          print('you tap on ${widget.sensor}');
        });
      },
      child: Container(
        //container TimeTile
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(left: 8),
        height: 30,
        decoration: BoxDecoration(
            //decoration TimeTile
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
                color: widget.isSelected ? Colors.black : Colors.white,
                width: 2)),
        child: Text(
          widget.sensor,
          style: TextStyle(
              color: widget.isSelected ? Colors.black : Color(0xff707171)),
        ),
      ),
    );
  }
}
