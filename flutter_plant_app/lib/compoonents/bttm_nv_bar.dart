import 'package:flutter/material.dart';
import 'package:flutter_plant_app/constants.dart';
import 'package:flutter_plant_app/screens/components/body.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlantBttmNavBar extends StatelessWidget {
  const PlantBttmNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: kDefaultPadding),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.35),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: SvgPicture.asset('assets/icons/flower.svg'),
            onPressed: null,
          ),
          IconButton(
            icon: SvgPicture.asset('assets/icons/heart-icon.svg'),
            onPressed: null,
          ),
          IconButton(
            icon: SvgPicture.asset('assets/icons/user-icon.svg'),
            onPressed: null,
          )
        ],
      ),
    );
  }
}
