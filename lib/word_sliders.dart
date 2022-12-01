import 'package:flutter/material.dart';

class WordSizeSlider extends StatefulWidget {
  const WordSizeSlider({super.key});

  @override
  State<WordSizeSlider> createState() => WordSizeState();
}

class WordSizeState extends State<WordSizeSlider> {
  double currentValue = 2;

  @override
  Widget build(BuildContext context) {
    return Wrap(alignment: WrapAlignment.center, children: [
      Text(
        "Number of letters: $currentValue",
        style: const TextStyle(fontSize: 20),
      ),
      Slider(
        min: 2,
        max: 31,
        divisions: 29,
        value: currentValue,
        onChanged: (value) {
          setState(() {
            currentValue = value;
          });
        },
      )
    ]);
  }
}
