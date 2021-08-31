import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_plant_app/constants.dart';
import '../../../constants.dart';

class TitleWithMore extends StatelessWidget {
  const TitleWithMore({
    Key? key,
    this.title,
    this.press,
  }) : super(key: key);

  final dynamic title;
  final dynamic press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithUnderLIne(text: title),
          Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: kPrimaryColor,
            onPressed: press,
            child: Text(
              "More",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithUnderLIne extends StatelessWidget {
  const TitleWithUnderLIne({Key? key, this.text}) : super(key: key);

  final dynamic text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
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
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
