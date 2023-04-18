import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
          debugShowCheckedModeBanner: false,
          home: dice(),
  ),
  );
}

class dice extends StatefulWidget {
  const dice({Key? key}) : super(key: key);

  @override
  State<dice> createState() => _diceState();
}

class _diceState extends State<dice> {
  int leftdicenumber= Random().nextInt(6)+1;
  int rightdicenumber= Random().nextInt(6)+1;

  void changeDice(){
    setState(() {
      leftdicenumber=Random().nextInt(6)+1;
      rightdicenumber=Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title:Text('Dice App'),
      ),
      body:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
                onPressed: (){
                  changeDice();
                },
                child: Image.asset(
                  'dice/dice$leftdicenumber.png',
                  width: 150,
                  height: 150,
                ),
            ),
          ),
          Center(
            child: TextButton(
                onPressed: (){
                  changeDice();
                },
                child: Image.asset(
                  'dice/dice$rightdicenumber.png',
                  width: 150,
                  height: 150,
                ),
            ),
          ),
        ],
      ),
    );
  }
  
  
}
