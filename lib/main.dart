import 'package:first_app/dice_rolller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        //  backgroundColor:Color.fromARGB(255, 55, 31, 94) ,
        body: gradientcontainer(),
      ),
    ),
  );
}

class gradientcontainer extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(80, 57, 32, 124),
            Color.fromARGB(96, 11, 124, 165)
          ],
        ),
      ),
      child:const Center(child: diceroller()),
    );
  }
}
