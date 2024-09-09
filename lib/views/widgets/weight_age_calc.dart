import 'package:bmi_app/views/widgets/calc_item.dart';
import 'package:flutter/material.dart';

class WeightAgeCalc extends StatelessWidget {
  const WeightAgeCalc({
    super.key,
    required this.weight,
    required this.age,
    required this.onPlusAge,
    required this.onMinusAge,
    required this.onPlusWeight,
    required this.onMinusWeight,
  });
  final int weight;
  final int age;
  final void Function() onPlusAge;
  final void Function() onMinusAge;
  final void Function() onPlusWeight;
  final void Function() onMinusWeight;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CalcItem(
            title: 'weight',
            number: weight,
            onPlusPressed: onPlusWeight,
            onMinusPressed: onMinusWeight,
          ),
        ),
        const SizedBox(
          width: 28,
        ),
        Expanded(
          child: CalcItem(
            title: 'age',
            number: age,
            onMinusPressed: onMinusAge,
            onPlusPressed: onPlusAge,
          ),
        ),
      ],
    );
  }
}
