import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_plant_app/constants.dart';
import 'package:flutter_plant_app/screens/home/components/heade_with_searchbox.dart';
import 'package:flutter_plant_app/screens/home/components/recommend_plats.dart';
import 'package:flutter_plant_app/screens/home/components/title_with_morebttn.dart';

import 'feature_plant.dart';

class Body extends StatelessWidget {
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWIthSearchBox(size: size),
          TitleWithMore(title: "Recommended", press: () {}),
          RecommendWithPlant(),
          TitleWithMore(title: "Featured Plants", press: () {}),
          FeaturedPlant(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
