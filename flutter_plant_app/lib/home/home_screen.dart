import 'package:flutter/material.dart';
import 'package:flutter_plant_app/compoonents/bttm_nv_bar.dart';
import 'package:flutter_plant_app/home/components/body.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: PlantBttmNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/menu.svg",
        ),
        onPressed: () {},
      ),
    );
  }
}
