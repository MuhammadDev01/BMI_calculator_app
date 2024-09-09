import 'package:bmi_app/utils/responsive_font.dart';
import 'package:bmi_app/views/layout/mobile_layout.dart';
import 'package:bmi_app/views/layout/tablet_layout.dart';
import 'package:bmi_app/views/widgets/adaptive_layout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BmiPage extends StatelessWidget {
  const BmiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A0F1E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'BMI CALCULATOR',
          style: GoogleFonts.protestGuerrilla(
            color: Colors.white,
            fontSize: getResponsiveFontSize(context, fontSize: 32),
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
