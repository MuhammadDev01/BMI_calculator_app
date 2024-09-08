import 'dart:math';
import 'package:bmi_app/widgets/calc_button.dart';
import 'package:bmi_app/widgets/gender_row.dart';
import 'package:bmi_app/widgets/weight_age_calc.dart';
import 'package:bmi_app/widgets/height_calc.dart';
import 'package:flutter/material.dart';

class BmiPage extends StatefulWidget {
  const BmiPage({super.key});

  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  bool isMale = true;
  double currentHeight = 180;
  int weight = 60;
  int age = 25;
  @override
  Widget build(BuildContext context) {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: ListView(
          children: [
            GenderRow(
              isMale: isMale,
              onTapMale: () {
                setState(
                  () {
                    isMale = true;
                  },
                );
              },
              onTapFemale: () {
                setState(() {
                  isMale = false;
                });
              },
            ),
            Expanded(
              child: HeightSlider(
                currentHeight: currentHeight,
                onChanged: (value) {
                  setState(
                    () {
                      currentHeight = value;
                    },
                  );
                },
              ),
            ),
            WeightAgeCalc(
              age: age,
              weight: weight,
              onPlusAge: () {
                setState(() {
                  age++;
                });
              },
              onMinusAge: () {
                setState(() {
                  age--;
                });
              },
              onMinusWeight: () => setState(() {
                weight--;
              }),
              onPlusWeight: () => setState(() {
                weight++;
              }),
            ),
            const SizedBox(
              height: 10,
            ),
            CalcButton(
              age: age,
              gender: isMale ? 'Male' : 'Female',
              bmi: weight / pow(currentHeight / 100, 2),
            ),
          ],
        ),
      ),
    );
  }
}
