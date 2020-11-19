
import 'package:flutter/material.dart';

import 'package:plant_app/screens/details/components/details_screen.dart';
import 'package:plant_app/screens/details/details_screen.dart';

import '../../../constants.dart';

class RecommendPlant extends StatelessWidget {
  const RecommendPlant({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecommendPlantCard(
            image: "assets/images/image_1.png",
            title: "Cactus",
            place: "Savar",
            price: 440,
            press: () {},
          ),
          RecommendPlantCard(
            image: "assets/images/image_2.png",
            title: "Cactus",
            place: "Savar",
            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecommendPlantCard(
            image: "assets/images/image_3.png",
            title: "Cactus",
            place: "Savar",
            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecommendPlantCard(
            image: "assets/images/image_1.png",
            title: "Cactus",
            place: "Savar",
            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    Key key,
    this.size,
    this.image,
    this.title,
    this.place,
    this.price,
    this.press,
  }) : super(key: key);
  final String image, title, place;
  final int price;
  final Function press;
  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
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
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(children: [
                          TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button,
                          )
                        ]),
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "$place".toUpperCase(),
                              style: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    'BDT $price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
