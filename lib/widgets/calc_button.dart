import 'dart:math';

import 'package:bmi_app/models/bmi_model.dart';
import 'package:bmi_app/widgets/bmi_result.dart';
import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  const CalcButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          )),
      child: MaterialButton(
        onPressed: () {
          if (MediaQuery.sizeOf(context).width < 700) {
            calcResultMethod(context);
          } else {}
        },
        child: const Text(
          'CALCULATE',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }

//weight / pow(currentHeight / 100, 2)
  Future<dynamic> calcResultMethod(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => Center(
        child: BmiResult(
          gender: BmiModel.isMale ? 'Male' : 'Female',
          age: BmiModel.age,
          bmi: BmiModel.weight / pow(BmiModel.currentHeight / 100, 2),
        ),
      ),
    );
  }
}
