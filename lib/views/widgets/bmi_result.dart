
import 'package:bmi_app/manager/BmiCubit/bmi_result_cubit.dart';
import 'package:bmi_app/utils/responsive_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class BMIResult extends StatelessWidget {
  const BMIResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BmiResultCubit, BmiResultState>(
      builder: (context, state) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'BMI Results',
                style: GoogleFonts.protestGuerrilla(
                  color: Colors.orange,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.8,
                  fontSize: getResponsiveFontSize(context, fontSize: 60),
                ),
              ),
              const Spacer(),
              Text(
                'Gender : ${BmiResultCubit.get(context).isMale ? 'Male' : 'Female'} ',
                style: GoogleFonts.protestGuerrilla(
                  color: BmiResultCubit.get(context).isMale?Colors.blueAccent:Colors.purple,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 10,
                  fontSize: getResponsiveFontSize(context, fontSize: 50),
                ),
              ),
              Text(
                'Age       : ${BmiResultCubit.get(context).age}',
                textAlign: TextAlign.left,
                style: GoogleFonts.protestGuerrilla(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 10,
                  fontSize: getResponsiveFontSize(context, fontSize: 50),
                ),
              ),
              Text(
                'BMI       : ${BmiResultCubit.get(context).bmi?.round() ?? ''}',
                textAlign: TextAlign.left,
                style: GoogleFonts.protestGuerrilla(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 10,
                  fontSize: getResponsiveFontSize(context, fontSize: 50),
                ),
                
              ),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }
}
