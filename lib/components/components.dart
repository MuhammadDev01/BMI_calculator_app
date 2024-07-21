import 'package:bmi_app/components/constants.dart';
import 'package:flutter/material.dart';

Widget genderItem({
  required IconData icon,
  required String gender,
  required void Function() onTap,
  required Color color,
  required BuildContext context,
}) =>
    Expanded(
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

Widget calcItem({
  required String title,
  required int number,
  required void Function() onPlusPressed,
  required void Function() onMinusPressed,
}) =>
    Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: kColorItem,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title.toUpperCase(),
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 22,
              ),
            ),
            Text(
              '$number',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w900),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.grey.withOpacity(0.4),
                  onPressed: onMinusPressed,
                  child: const Icon(
                    size: 36,
                    Icons.remove,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                FloatingActionButton(
                  backgroundColor: Colors.grey.withOpacity(0.4),
                  onPressed: onPlusPressed,
                  child: const Icon(
                    size: 36,
                    Icons.add,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
