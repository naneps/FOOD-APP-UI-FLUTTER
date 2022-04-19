import 'package:flutter/material.dart';
import 'package:food_app_ui/data/constants.dart';
import 'package:food_app_ui/data/demoData.dart';
import 'package:food_app_ui/widgets/image_caourusel.dart';
import 'package:food_app_ui/widgets/restauran_medium_card.dart';
import 'package:food_app_ui/widgets/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Column(
              children: [
                Text(
                  "Delivery to".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: kActiveColor),
                ),
                Text(
                  "San Francisco",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Filter",
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
          SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              sliver: SliverToBoxAdapter(child: ImageCarousel())),
          SliverPadding(
            padding: EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: "Featured Partner",
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    demoMediumCardData.length,
                    (index) => RestaurantInfoMediumCard(
                        title: demoMediumCardData[index]['name'],
                        image: demoMediumCardData[index]['image'],
                        location: demoMediumCardData[index]['location'],
                        deliveryTime: demoMediumCardData[index]['delivertTime'],
                        rating: demoMediumCardData[index]['rating'],
                        press: () {})),
              ),
            ),
          )
        ],
      ),
    );
  }
}
