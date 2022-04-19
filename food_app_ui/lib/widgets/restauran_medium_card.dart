import 'package:flutter/material.dart';
import 'package:food_app_ui/data/constants.dart';
import 'package:food_app_ui/data/demoData.dart';

class RestaurantInfoMediumCard extends StatelessWidget {
  final String title, image, location;
  final int deliveryTime;
  final double rating;
  final VoidCallback press;
  RestaurantInfoMediumCard({
    required this.title,
    required this.image,
    required this.location,
    required this.deliveryTime,
    required this.rating,
    required this.press,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {},
      child: SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.25,
              child: Image.asset(image),
            ),
            SizedBox(
              height: defaultPadding / 2,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headline6,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              location,
              style: TextStyle(color: kBodyTextColor),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
              child: DefaultTextStyle(
                style: TextStyle(color: Colors.black, fontSize: 12),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding / 2,
                          vertical: defaultPadding / 8),
                      decoration: BoxDecoration(
                          color: kActiveColor,
                          borderRadius: BorderRadius.circular(6)),
                      child: Text(
                        rating.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                    Spacer(),
                    Text("$deliveryTime min"),
                    Spacer(),
                    CircleAvatar(
                      radius: 2,
                      backgroundColor: Color(0xFF868686),
                    ),
                    Text("Free Delivery")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
