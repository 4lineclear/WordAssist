import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  void onClick() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'WordAssist',
            style: TextStyle(fontSize: 80.0),
          ),
          OutlinedButton(
            onPressed: onClick,
            child: const Text(
              "Start",
              style: TextStyle(fontSize: 64.0),
            ),
          ),
          const Text('By Yahya')
        ],
      ),
    ));
  }
}
