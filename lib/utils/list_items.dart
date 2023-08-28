// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final double sheetItemHeight;
  final Map mapVal;

  const ListItem({super.key, required this.sheetItemHeight, required this.mapVal});

  @override
  Widget build(BuildContext context) {
    var innerMap;
    bool isMap;

    if (mapVal.values.elementAt(0) is Map) {
      innerMap = mapVal.values.elementAt(0);
      isMap = true;
    } else {
      innerMap = mapVal;
      isMap = false;
    }

    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: sheetItemHeight,
      height: sheetItemHeight,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(mapVal.keys.elementAt(0).toString()),
          isMap
              ? Text(
                  innerMap.keys.elementAt(0).toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.black, letterSpacing: 1.2, fontSize: 11),
                )
              : Container(),
          Text(
            innerMap.values.elementAt(0).toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 15),
          )
        ],
      ),
    );
  }
}
