import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {

  static const String name = 'buttons_screen'; // Property to set name in go router.
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons Screen'),
      ),
      body: Center(
        child: Text('This is the Buttons Screen'),
      ),
    );
  }
}