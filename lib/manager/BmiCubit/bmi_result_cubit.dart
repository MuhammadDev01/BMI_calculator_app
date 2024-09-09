import 'dart:math';

import 'package:bmi_app/constants.dart';
import 'package:bmi_app/views/widgets/bmi_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bmi_result_state.dart';

class BmiResultCubit extends Cubit<BmiResultState> {
  BmiResultCubit() : super(BmiResultInitialState());
  static BmiResultCubit get(context) => BlocProvider.of(context);

  bool isMale = true;
  double currentHeight = 180;
  int weight = 60;
  int age = 25;
  double? bmi;

  void counterPlusAge() {
    age++;
    emit(BmiCounterPlusState());
  }

  void counterPlusWeight() {
    weight++;
    emit(BmiCounterPlusState());
  }

  void counterMinusAge() {
    age--;
    emit(BmiCounterMinusState());
  }

  void counterMinusWeight() {
    weight--;
    emit(BmiCounterMinusState());
  }

  void changeGender(bool value) {
    isMale = value;
    emit(BmiGenderChangeState());
  }

  void changeHeightSlider(double value) {
    currentHeight = value;
    emit(BmiHeightSliderState());
  }

  void calcBmi(BuildContext context) {
    bmi = weight / pow(currentHeight / 100, 2);
    if (MediaQuery.sizeOf(context).width < 700) {
      calcResultMethod(context);
    }
    emit(BmiResultGetResultState());
  }

  Future<dynamic> calcResultMethod(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => Center(
        child: Container(
          decoration: BoxDecoration(
            color: kColorItem,
            borderRadius: BorderRadius.circular(8),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          height: 350,
          width: double.infinity,
          child: const BMIResult(),
        ),
      ),
    );
  }
}
