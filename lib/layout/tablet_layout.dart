import 'dart:math';

import 'package:bmi_app/components/constants.dart';
import 'package:bmi_app/layout/mobile_layout.dart';
import 'package:bmi_app/models/bmi_model.dart';
import 'package:bmi_app/widgets/bmi_result.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key});

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: MobileLayout()),
        Expanded(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'BMI Results',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.8,
                    fontSize: 28,
                  ),
                ),
                Text(
                  'Gender : ${BmiModel.isMale ? 'Male' : 'Female'} ',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 10,
                    fontSize: 28,
                  ),
                ),
                Text(
                  'Age       : ${BmiModel.age}',
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 10,
                    fontSize: 28,
                  ),
                ),
                Text(
                  'BMI       : ${BmiModel.weight / pow(BmiModel.currentHeight / 100, 2).round()}',
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 10,
                    fontSize: 28,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
