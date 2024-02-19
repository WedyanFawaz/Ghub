import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghub_app/Controllers/Controllers.dart';


class _CarouselWithIndicatorState extends CarouselState {
  int _current = 0;

  _CarouselWithIndicatorState(
      super.options, super.onResetTimer, super.onResumeTimer, super.changeMode);

  @override
  Widget build(BuildContext context) {
    final OptionController _optionController = Get.put(OptionController());
    double cardWidth = MediaQuery.of(context).size.width;
    double cardHeight = MediaQuery.of(context).size.height;

    return CarouselSlider.builder(
  
      itemCount: _optionController.options.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        final option = _optionController.options[index];
        return Container(
          height: cardHeight * 0.20,
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 140, 140, 138),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: cardWidth * 0.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      option.title,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      overflow: TextOverflow.visible,
                      option.company,
                      style: TextStyle(fontSize: 12.0),
                    ),
                    SizedBox(height: 4.0),
                    Expanded(
                      child: Text(
                        option.text,
                        overflow: TextOverflow.visible,
                        style: TextStyle(fontSize: 6.0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      options: CarouselOptions(
        onPageChanged: ((index, reason) =>  _current = index),
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: false,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}