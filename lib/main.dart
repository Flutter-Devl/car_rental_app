import 'package:car_rental_app/utils/layouts.dart';
import 'package:flutter/material.dart';

import 'model/car.dart';

void main() => runApp(const MyApp());

var currentCar = carList.cars[0];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: Colors.black,
      body: const LayoutStarts(),
    );
  }
}
