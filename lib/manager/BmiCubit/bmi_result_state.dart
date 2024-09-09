part of 'bmi_result_cubit.dart';

@immutable
sealed class BmiResultState {}

final class BmiResultInitialState extends BmiResultState {}

final class BmiCounterPlusState extends BmiResultState {}

final class BmiCounterMinusState extends BmiResultState {}

final class BmiHeightSliderState extends BmiResultState {}

final class BmiGenderChangeState extends BmiResultState {}

final class BmiResultGetResultState extends BmiResultState {}
