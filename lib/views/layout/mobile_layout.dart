import 'package:bmi_app/manager/BmiCubit/bmi_result_cubit.dart';
import 'package:bmi_app/views/widgets/calc_button.dart';
import 'package:bmi_app/views/widgets/gender_row.dart';
import 'package:bmi_app/views/widgets/height_calc.dart';
import 'package:bmi_app/views/widgets/weight_age_calc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BmiResultCubit, BmiResultState>(
      listener: (context, state) {},
      builder: (context, state) {
        return ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            GenderRow(
              isMale: BmiResultCubit.get(context).isMale,
              onTapMale: () => BmiResultCubit.get(context).changeGender(true),
              onTapFemale: () =>
                  BmiResultCubit.get(context).changeGender(false),
            ),
            HeightSlider(
              currentHeight: BmiResultCubit.get(context).currentHeight,
              onChanged: (value) {
                BmiResultCubit.get(context).changeHeightSlider(value);
              },
            ),
            WeightAgeCalc(
              age: BmiResultCubit.get(context).age,
              weight: BmiResultCubit.get(context).weight,
              onPlusAge: () => BmiResultCubit.get(context).counterPlusAge(),
              onMinusAge: () => BmiResultCubit.get(context).counterMinusAge(),
              onPlusWeight: () =>
                  BmiResultCubit.get(context).counterPlusWeight(),
              onMinusWeight: () =>
                  BmiResultCubit.get(context).counterMinusWeight(),
            ),
            const SizedBox(
              height: 10,
            ),
            CalcButton(
              onPressed: () => BmiResultCubit.get(context).calcBmi(context),
            ),
          ],
        );
      },
    );
  }
}
