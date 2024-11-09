import 'package:flutter/material.dart';

class ColorSlider extends StatelessWidget {
  final String label;
  final int value;
  final Function(int) onChanged;

  ColorSlider({required this.label, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$label: $value'),
        Slider(
          value: value.toDouble(),
          min: 0,
          max: 255,
          activeColor: Colors.purple,
          onChanged: (double newValue) {
            onChanged(newValue.toInt());
          },
        ),
      ],
    );
  }
}
