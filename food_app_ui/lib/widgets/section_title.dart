import 'package:flutter/material.dart';
import 'package:food_app_ui/data/constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    required this.title,
    required this.press,
    Key? key,
  }) : super(key: key);
  final String title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        TextButton(
          onPressed: press,
          child: Text("See all"),
          style: TextButton.styleFrom(primary: kAccentColor),
        )
      ],
    );
  }
}
