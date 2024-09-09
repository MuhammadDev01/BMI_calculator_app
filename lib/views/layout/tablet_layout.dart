import 'package:bmi_app/views/layout/mobile_layout.dart';
import 'package:bmi_app/views/widgets/bmi_result.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: MobileLayout()),
        Expanded(
          child: BMIResult(),
        ),
      ],
    );
  }
}
