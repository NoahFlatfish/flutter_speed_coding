import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_plant_app/screens/details/components/image_and_icons.dart';
import 'package:flutter_plant_app/screens/details/components/title_and_price.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          TitleAndPrice(
            title: "Angelica",
            country: "Russia",
            price: 440,
          ),
        ],
      ),
    );
  }
}
