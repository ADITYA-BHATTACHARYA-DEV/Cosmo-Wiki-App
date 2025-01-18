import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/components/recomend_planet.dart';
import 'package:plant_app/screens/home/components/title_with_more_btn.dart';
import 'package:plant_app/screens/home/header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recommended",
            press: () {},
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                RecomendsPlanet(),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
