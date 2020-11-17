import 'package:flutter/material.dart';
import 'package:ozone/view/home/homepage.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  List<String> sensor = [
    "Temperatur",
    "humidity",
    "rainfall",
    "atmospheric pressure",
    "wind"
  ];

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
                  // CATEGORIE TEXT
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
                    //Contructeur de list
                    return CategorieTile(
                      //Function return categories on home page
                      categorie: sensor[index],
                      isSelected: selectedSensor == sensor[index],
                      context: this,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class CategorieTile extends StatefulWidget {
  final String categorie;
  final bool isSelected;
  final _HomeBodyState context;
  CategorieTile({this.categorie, this.isSelected, this.context});

  @override
  _CategorieTileState createState() => _CategorieTileState();
}

class _CategorieTileState extends State<CategorieTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Action when categorie is tap
        widget.context.setState(() {
          selectedSensor = widget.categorie;
          print('you tap on ${widget.categorie}');
        });
      },
      child: Container(
        //container categoriTile
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(left: 8),
        height: 30,
        decoration: BoxDecoration(
            //decoration categoriTile
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
                color: widget.isSelected ? Colors.black : Colors.white,
                width: 2)),
        child: Text(
          widget.categorie,
          style: TextStyle(
              color: widget.isSelected ? Colors.black : Color(0xff707171)),
        ),
      ),
    );
  }
}
