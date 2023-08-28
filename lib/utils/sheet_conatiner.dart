import 'package:car_rental_app/main.dart';
import 'package:car_rental_app/utils/list_items.dart';
import 'package:flutter/material.dart';

class SheetContainer extends StatelessWidget {
  const SheetContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sheetItemHeight = 110;
    return Container(
      padding: const EdgeInsets.only(top: 25),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
        color: Color(0xfff1f1f1),
      ),
      child: Column(
        children: <Widget>[
          drawerHandle(),
          Expanded(
            flex: 1,
            child: ListView(
              children: <Widget>[
                offerDetails(sheetItemHeight),
                specifications(sheetItemHeight),
                features(sheetItemHeight),
                const SizedBox(height: 220),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget drawerHandle() {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      height: 3,
      width: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xffd9dbdb),
      ),
    );
  }

  Widget specifications(double sheetItemHeight) {
    return Container(
      padding: const EdgeInsets.only(top: 15, left: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Specifications",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            height: sheetItemHeight,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: currentCar.specifications.length,
              itemBuilder: (context, index) {
                return ListItem(
                  sheetItemHeight: sheetItemHeight,
                  mapVal: currentCar.specifications[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget features(double sheetItemHeight) {
    return Container(
      padding: const EdgeInsets.only(top: 15, left: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Features",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            height: sheetItemHeight,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: currentCar.features.length,
              itemBuilder: (context, index) {
                return ListItem(
                  sheetItemHeight: sheetItemHeight,
                  mapVal: currentCar.features[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget offerDetails(double sheetItemHeight) {
    return Container(
      padding: const EdgeInsets.only(top: 15, left: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Offer Details",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            height: sheetItemHeight,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: currentCar.offerDetails.length,
              itemBuilder: (context, index) {
                return ListItem(
                  sheetItemHeight: sheetItemHeight,
                  mapVal: currentCar.offerDetails[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
