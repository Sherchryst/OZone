import 'package:flutter/material.dart';

class ProductModel {
  String nameOfProduction;
  String variety;
  String density;
  ProductModel({this.density, this.nameOfProduction, this.variety});
}

class ProductTile extends StatelessWidget {
  final String nameOfProduction;
  final String variety;
  final String density;

  const ProductTile({
    this.nameOfProduction,
    this.variety,
    this.density,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[400],
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 17),
          child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "$nameOfProduction",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 60),
                      child: Text(
                        "Varieté: $variety",
                        style:
                            TextStyle(color: Colors.deepPurple, fontSize: 13),
                      ),
                    ),
                  ],
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(13)),
                    child: Text(
                      "$density",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
