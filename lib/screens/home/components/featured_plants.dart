import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/title_with_more_btn.dart';

class FeaturedPlanet extends StatelessWidget {
  const FeaturedPlanet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWithMoreBtn(
          title: "Featured Planets",
          press: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              FeaturePlanetCard(
                image: "assets/images/image_1.png",
                              press: () {},
              ),
              FeaturePlanetCard(
                image: "assets/images/bottom_img_2.png",
                press: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FeaturePlanetCard extends StatelessWidget {
  const FeaturePlanetCard({
    super.key,
    required this.image,
    required this.press,
  });

  final String image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              image,
            ),
          ),
        ),
      ),
    );
  }
}
