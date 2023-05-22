import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

void main() {
  runApp(
      const MaterialApp(home: RollDice(), debugShowCheckedModeBanner: false));
}

class RollDice extends StatefulWidget {
  const RollDice({Key? key}) : super(key: key);

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  int num = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 47, 14, 101),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.asset(
            "assets/images/dice-$num.png",
            height: 150,
            width: 150,
          ),
          const SizedBox(height: 10),
          TextButton(
              onPressed: () => setState(() {
                    num = randomizer.nextInt(6) + 1;
                  }),
              child: const Text(
                "Roll Dice",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ))
        ]),
      ),
    );
  }
}
