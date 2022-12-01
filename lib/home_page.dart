import 'package:flutter/material.dart';
import 'menu_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});
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
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Menu();
              }));
            },
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
