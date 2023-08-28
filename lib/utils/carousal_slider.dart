import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarCarousel extends StatefulWidget {
  final List<String> imgList;
  final List<Widget> items;

  const CarCarousel({
    Key? key,
    required this.imgList,
    required this.items,
  }) : super(key: key);

  @override
  _CarCarouselState createState() => _CarCarouselState();
}

class _CarCarouselState extends State<CarCarousel> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(
            height: 250,
            viewportFraction: 1.0,
            onPageChanged: (_, index) {
              setState(() {
                _current = index.index;
              });
            },
          ),
          items: widget.items,
        ),
        Container(
          margin: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: _map<Widget>(widget.imgList, (index, assetName) {
              return Container(
                width: 50,
                height: 2,
                decoration: BoxDecoration(
                  color:
                      _current == index ? Colors.grey[100] : Colors.grey[600],
                ),
              );
            }),
          ),
        )
      ],
    );
  }

  List<T> _map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
}
