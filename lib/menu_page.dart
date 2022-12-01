import 'package:flutter/material.dart';
import 'word_sliders.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Stack(
          fit: StackFit.loose,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: BackButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Positioned(
                top: constraints.maxHeight / 2,
                left: 10,
                right: 10,
                child: const WordSizeSlider()
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: OutlinedButton(
                onPressed: () {
                  print("hello\n");
                },
                child: const Text(
                  "Start",
                  style: TextStyle(fontSize: 64.0),
                ),
              ),
            )
          ],
        ),
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     BackButton(
      //       onPressed: () {
      //         Navigator.pop(context);
      //       },
      //     ),
      //     const WordSizeSlider(),
      //     OutlinedButton(
      //       child: const Text(
      //         "Start",
      //         style: TextStyle(fontSize: 64),
      //       ),
      //       onPressed: () {},
      //     )
      //   ],
      // ),
    );
  }
}
