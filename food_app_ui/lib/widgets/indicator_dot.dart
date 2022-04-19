import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart'

class IndicatorDot extends StatelessWidget {
  final bool isActive;
  const IndicatorDot({required this.isActive, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 8,
      decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.white38,
          borderRadius: BorderRadius.circular(12)),
    );
  }
}
