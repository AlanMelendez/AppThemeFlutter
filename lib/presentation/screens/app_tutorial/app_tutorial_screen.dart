import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo({required this.title, required this.caption, required this.imageUrl});

}

final slides = <SlideInfo> [
  SlideInfo(title: 'Busca la comida', caption: 'lorem', imageUrl: 'assets/images/1.png'),
  SlideInfo(title: 'Entrega rapida', caption: 'caption', imageUrl: 'assets/images/1.png'),
  SlideInfo(title: 'Disfruta la comida', caption: 'caption', imageUrl: 'assets/images/1.png')

];

class AppTutorialScreen extends StatelessWidget {
  static const name = 'tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: BouncingScrollPhysics(), //
        children: [
        ],
      ),
    );
  }
}
