import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';


class RecomendsPlanet extends StatelessWidget {
  const RecomendsPlanet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children:<Widget>[
      RecomendPlanetCard(
                  image: 'assets/images/image_2.png',
                  title: 'Aditya',
                  country: 'India',
                  price: 440,
                  press: () {},
                ),
                RecomendPlanetCard(
                  image: 'assets/images/image_3.png',
                  title: 'Aditya',
                  country: 'India',
                  price: 440,
                  press: () {},
                ),
    ]
    ) 
      
    );
    
  }
}

class RecomendPlanetCard extends StatelessWidget {
  const RecomendPlanetCard({
    super.key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  });

  final String image, title, country;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  )
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
