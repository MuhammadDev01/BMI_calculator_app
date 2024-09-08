import 'dart:math';

import 'package:bmi_app/components/constants.dart';
import 'package:bmi_app/models/bmi_model.dart';
import 'package:bmi_app/widgets/calc_button.dart';
import 'package:bmi_app/widgets/gender_row.dart';
import 'package:bmi_app/widgets/height_calc.dart';
import 'package:bmi_app/widgets/weight_age_calc.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      children: [
        GenderRow(
          isMale: BmiModel.isMale,
          onTapMale: () {
            setState(
              () {
                BmiModel.isMale = true;
              },
            );
          },
          onTapFemale: () {
            setState(() {
              BmiModel.isMale = false;
            });
          },
        ),
        HeightSlider(
          currentHeight: BmiModel.currentHeight,
          onChanged: (value) {
            setState(
              () {
                BmiModel.currentHeight = value;
              },
            );
          },
        ),
        WeightAgeCalc(
          age: BmiModel.age,
          weight: BmiModel.weight,
          onPlusAge: () {
            setState(() {
              BmiModel.age++;
            });
          },
          onMinusAge: () {
            setState(() {
              BmiModel.age--;
            });
          },
          onMinusWeight: () => setState(() {
            BmiModel.weight--;
          }),
          onPlusWeight: () => setState(() {
            BmiModel.weight++;
          }),
        ),
        const SizedBox(
          height: 10,
        ),
        const CalcButton(),
      ],
    );
  }
}
