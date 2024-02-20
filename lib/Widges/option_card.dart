import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:ghub_app/Models/optionsModel.dart';
import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({super.key, required this.option});
  final Option option;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Container(
        width: 397,
        height: 151,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(color: Color.fromRGBO(230, 230, 230, 1), spreadRadius: 1)
          ],
          color: const Color.fromRGBO(248, 248, 248, 1),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(22),
                  bottomLeft: Radius.circular(22)),
              child: Image.asset(
                option.image,
                fit: BoxFit.contain,
              ),
            ),
            Container(
              width: 180,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 15),
              child: Column(
                children: [
                  Text(
                    option.title,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 77, 76, 125),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    option.company,
                    maxLines: 2, // Set the maximum number of lines
                    overflow: TextOverflow.ellipsis, // Set overflow property
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Color.fromARGB(155, 124, 50, 137),
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "The mission of 'Challenge of Solution' is to achieve one or more of the United Nations' Sustainable Development Goals, which consists of 17 goals, using Google technology.",
                    style: TextStyle(
                      color: Color.fromARGB(155, 124, 50, 137),
                      fontSize: 7,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "22 Feb 2024",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color.fromARGB(155, 124, 50, 137),
                      fontSize: 7,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
