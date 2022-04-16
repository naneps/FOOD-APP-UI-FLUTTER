import 'package:flutter/material.dart';
import 'package:food_app_ui/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            )
          ],
        ),
      ),
    );
  }
}
