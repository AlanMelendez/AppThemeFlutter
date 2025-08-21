import 'package:flutter/material.dart';

class AnimatedScreen extends StatelessWidget {
  static const name = 'animated_screen';
  const AnimatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Container")),

      body: Center(

         child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeOutCubic,
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(40)
          ),
        ),


        // child: Container(
        //   width: 150,
        //   height: 150,
        //   decoration: BoxDecoration(
        //     color: Colors.amber,
        //     borderRadius: BorderRadius.circular(40)
        //   ),
        // ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
