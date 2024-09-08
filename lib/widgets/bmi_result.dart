import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  const BmiResult({
    super.key,
    required this.gender,
    required this.age,
    required this.bmi,
  });

  final String gender;
  final int age;
  final double bmi;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: 350,
      width: double.infinity,
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
            const Spacer(),
            Text(
              'Gender : $gender',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                wordSpacing: 10,
                fontSize: 28,
              ),
            ),
            Text(
              'Age       : $age',
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                wordSpacing: 10,
                fontSize: 28,
              ),
            ),
            Text(
              'BMI       : ${bmi.round()}',
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                wordSpacing: 10,
                fontSize: 28,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
