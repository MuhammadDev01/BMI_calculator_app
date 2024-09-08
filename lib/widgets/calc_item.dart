import 'package:bmi_app/components/constants.dart';
import 'package:flutter/material.dart';

class CalcItem extends StatelessWidget {
  const CalcItem(
      {super.key,
      required this.title,
      required this.number,
      required this.onPlusPressed,
      required this.onMinusPressed});
  final String title;
  final int number;
  final void Function() onPlusPressed;
  final void Function() onMinusPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
  }
}
