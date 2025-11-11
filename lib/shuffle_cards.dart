import 'dart:math';

import 'package:flutter/material.dart';

class ShuffleCards extends StatefulWidget {
  const ShuffleCards({super.key});

  @override
  State<ShuffleCards> createState() => _ShuffleCardsState();
}

var random = Random();

class _ShuffleCardsState extends State<ShuffleCards> {
  String em1 = "❔";
  String em2 = "❔";
  String em3 = "❔";
  String result = "";
  List<String> emojis = ["♥", "♦", "♠", "♣", "🃏"];
  double emsize = 60;
  double txtsize = 20;

  void select_cards() {
    setState(() {
      em1 = emojis[random.nextInt(5)];
      em2 = emojis[random.nextInt(5)];
      em3 = emojis[random.nextInt(5)];
      if (em1 == "🃏" || em2 == "🃏" || em3 == "🃏") {
        result = "🃏 The Joker is in there!";
      } else {
        result = "";
      }
    });
  }

  void reset() {
    setState(() {
      em1 = "❔";
      em2 = "❔";
      em3 = "❔";
      result = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 30,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 30,
          children: [
            Text(em1, style: TextStyle(fontSize: emsize)),
            Text(em2, style: TextStyle(fontSize: emsize)),
            Text(em3, style: TextStyle(fontSize: emsize)),
          ],
        ),
        Text(result, style: TextStyle(fontSize: 30)),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.yellow),
          ),
          onPressed: select_cards,
          child: Text(
            'Select Cards',
            style: TextStyle(fontSize: txtsize, color: Colors.black),
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(
              const Color.fromARGB(255, 3, 25, 224),
            ),
          ),
          onPressed: reset,
          child: Text(
            'Reset',
            style: TextStyle(fontSize: txtsize, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
