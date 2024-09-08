import 'package:bmi_app/pages/bmi_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      DevicePreview(
        enabled: kReleaseMode,
        builder: (context) => const BmiCalculatorApp(), // Wrap your app
      ),
    );

class BmiCalculatorApp extends StatelessWidget {
  const BmiCalculatorApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const BmiPage(),
    );
  }
}
