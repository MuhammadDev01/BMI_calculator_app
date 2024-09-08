import 'dart:developer';

import 'package:bmi_app/layout/mobile_layout.dart';
import 'package:bmi_app/layout/tablet_layout.dart';
import 'package:bmi_app/widgets/adaptive_layout.dart';
import 'package:flutter/material.dart';

class BmiPage extends StatelessWidget {
  const BmiPage({super.key});

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());

    return Scaffold(
      backgroundColor: const Color(0xff0A0F1E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
      ),
    );
  }
}
