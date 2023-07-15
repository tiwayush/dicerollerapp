import 'package:flutter/material.dart';
import 'dart:math';

class diceroller extends StatefulWidget {
  const diceroller({super.key});
  @override
  State<diceroller> createState() {
    return _dicerollerstate();
  }
}

class _dicerollerstate extends State<diceroller> {
  var currentdiceroll=2;
  void rolldice() {
    
    setState(() {
     currentdiceroll=Random().nextInt(6)+1; 
    });
  }
    @override
    Widget build(context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-$currentdiceroll.png',
            width: 200,
          ),
          TextButton(
              onPressed: rolldice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                foregroundColor: Colors.black,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text('Roll Dice')),
        ],
      );
    }
  
}
