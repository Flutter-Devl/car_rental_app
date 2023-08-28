import 'package:car_rental_app/main.dart';
import 'package:car_rental_app/utils/carousal_slider.dart';
import 'package:flutter/material.dart';

class CarDetails extends StatelessWidget {
  const CarDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imgList = currentCar.imgList;
    final items = imgList.map<Widget>((assetName) {
      return Image.asset("assets/$assetName", fit: BoxFit.fitWidth);
    }).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(left: 30),
          child: _carTitle(),
        ),
        SizedBox(
          width: double.infinity,
          child: CarCarousel(imgList: imgList, items: items),
        )
      ],
    );
  }

  Widget _carTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RichText(
          text: TextSpan(
            style: const TextStyle(color: Colors.white, fontSize: 38),
            children: [
              TextSpan(text: currentCar.companyName),
              const TextSpan(text: "\n"),
              TextSpan(
                text: currentCar.carName,
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        RichText(
          text: TextSpan(style: const TextStyle(fontSize: 16), children: [
            TextSpan(
              text: currentCar.price.toString(),
              style: TextStyle(color: Colors.grey[20]),
            ),
            const TextSpan(
              text: " / day",
              style: TextStyle(color: Colors.grey),
            )
          ]),
        ),
      ],
    );
  }
}
