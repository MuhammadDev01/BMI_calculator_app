import 'package:bmi_app/constants.dart';
import 'package:flutter/material.dart';

class HeightSlider extends StatelessWidget {
  const HeightSlider({
    super.key,
    required this.onChanged,
    required this.currentHeight,
  });
  final void Function(double) onChanged;
  final double currentHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 9),
      decoration: BoxDecoration(
          color: kColorItem, borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'HEIGHT',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 22,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${currentHeight.round()}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const Text(
                'cm',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 22,
                ),
              ),
            ],
          ),
          SliderTheme(
            data: const SliderThemeData(
              trackHeight: 2.0,
              trackShape: RectangularSliderTrackShape(),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 16),
            ),
            child: Slider(
              activeColor: Colors.white,
              thumbColor: Colors.red,
              inactiveColor: Colors.grey,
              value: currentHeight,
              min: 70,
              max: 250,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
