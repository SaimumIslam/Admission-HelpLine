import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CaroselPage extends StatelessWidget {

  final List<String> imgList = [
    'images/campus/pic1.jpg',
    'images/campus/pic2.jpg',
    'images/campus/pic3.jpg',
    'images/campus/pic4.jpg',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    //Pages covers entire carousel
    final CarouselSlider coverScreenExample = CarouselSlider(
      viewportFraction: 1.0,
      aspectRatio: 2.0,
      autoPlay: true,
      enlargeCenterPage: false,
      pauseAutoPlayOnTouch: Duration(seconds: 3),
      items: map<Widget>(
        imgList,
            (index, i) {
          return Container(
            decoration: BoxDecoration(
              image:
              DecorationImage(image: ExactAssetImage(i), fit: BoxFit.cover),
            ),
          );
        },
      ),
    );

    return Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          child: Column(children: [
            coverScreenExample,
          ])),
    );
  }
}
