
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderCard extends StatelessWidget {
  List<String> item_card;
  double width;
  double height;
  double fraction;
  SliderCard({super.key,required this.item_card,required this.width,required this.height,required this.fraction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 17),
      child: CarouselSlider(items: item_card.map((item)=>
          Container(child: Center(child:
          Image.asset(item,fit: BoxFit.fill,
            width: width,),))).toList(),
          options: CarouselOptions(
            autoPlay: false,
            height: height,
            disableCenter: false,
            //enlargeCenterPage: true,
            padEnds: false,
            viewportFraction: fraction,

          )),
    );
  }
}
