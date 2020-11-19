import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
//import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/recommend_plant.dart';
import 'package:plant_app/screens/home/components/title_with_more_btn.dart';
//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:plant_app/constants.dart';

import 'featured_plant.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "For Garden",
            press: () {},
          ),
          RecommendPlant(),
          TitleWithMoreBtn(
            title: "For Project",
            press: () {},
          ),
          FeaturedPlant(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}

