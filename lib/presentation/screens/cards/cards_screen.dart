import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  
  static const String name = 'cards_screen'; // Property to set name in go router.
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards Screen'),
      ),
      body: Center(
        child: Text('This is the Cards Screen'),
      ),
    );
  }
}