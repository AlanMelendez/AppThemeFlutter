import 'package:flutter/material.dart';


class InfiniteScrollScreen extends StatelessWidget {

  static const name = 'infinite_screen';
  const InfiniteScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}