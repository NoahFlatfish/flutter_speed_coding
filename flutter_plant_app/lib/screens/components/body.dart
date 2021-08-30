import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_plant_app/constants.dart';
import 'package:flutter_plant_app/screens/components/heade_with_searchbox.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWIthSearchBox(size: size),
          Container(
            height: 25,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: kDefaultPadding / 4),
                  child: Text(
                    "Recomended",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 7,
                    color: kPrimaryColor.withOpacity(0.2),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
