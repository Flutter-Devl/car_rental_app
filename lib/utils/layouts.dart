import 'package:car_rental_app/utils/card_animation.dart';
import 'package:car_rental_app/utils/custom_bottom_sheets.dart';
import 'package:flutter/material.dart';

class LayoutStarts extends StatelessWidget {
  const LayoutStarts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: <Widget>[
        CarDetailsAnimation(),
        CustomBottomSheet(),
      ],
    );
  }
}
