import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghub_app/Controllers/Controllers.dart';
import 'package:ghub_app/Widges/OptionWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final OptionController _optionController = Get.put(OptionController());
       double cardHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(height: 20,),
      // Obx(() => Expanded(
      //   child: ListView.builder(
      //     scrollDirection: Axis.horizontal,
      //       itemCount: _optionController.options.length,
      //       itemBuilder: (context, index) {
      //         final option = _optionController.options[index];
      //     return    OptionCard(option: option);
      //       }),
      // )
      
      // ), Container(height:cardHeight*0.70,)
    ]));
  }
}
