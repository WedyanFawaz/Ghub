import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghub_app/Controllers/Controllers.dart';
import 'package:ghub_app/Models/optionsModel.dart';
import 'package:ghub_app/Widges/option_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    final OptionController controller = Get.put(OptionController());

    return Container(
      margin: EdgeInsets.only(top: 38),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: controller.options.length,
              itemBuilder: (context, index, realIndex) {
                return OptionCard(
                  option: controller.options[index],
                );
              },
              options: CarouselOptions(
                height: 151,
                viewportFraction: 1,
                autoPlay: true,
                onPageChanged: (index, reason) =>
                    controller.setActiveIndex(index),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Obx(
              () => AnimatedSmoothIndicator(
                effect: const WormEffect(
                  dotHeight: 9,
                  dotWidth: 10,
                ),
                activeIndex: controller.activeIndex.value,
                count: controller.options.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
