import 'package:flutter/material.dart';
import 'shuffle_cards.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: ShuffleCards(),
        ),
      ),
    )
  );
}
