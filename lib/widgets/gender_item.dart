import 'package:bmi_app/components/responsive_font.dart';
import 'package:flutter/material.dart';

class GenderItem extends StatelessWidget {
  const GenderItem(
      {super.key,
      required this.icon,
      required this.gender,
      required this.onTap,
      required this.color,
      required this.context});
  final IconData icon;
  final String gender;
  final void Function() onTap;
  final Color color;
  final BuildContext context;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 100,
                color: Colors.white,
              ),
              Text(
                gender,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: getResponsiveFontSize(
                    context,
                    fontSize: 22,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
