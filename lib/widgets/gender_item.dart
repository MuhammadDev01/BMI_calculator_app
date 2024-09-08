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
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
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
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
