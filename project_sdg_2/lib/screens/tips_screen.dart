import 'package:flutter/material.dart';

class TipsScreen extends StatelessWidget {
  final List<String> tips = [
    "Plan your meals for the week to avoid buying unnecessary items.",
    "Store fruits and vegetables properly to extend their freshness.",
    "Use leftovers creatively to make new meals.",
    "Check your fridge before shopping to avoid buying what you already have.",
    "Keep your pantry organized to prevent food from going to waste.",
    "",
    "Donate to those without. Even a little coin goes a long way"
  ];

  TipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          '#ZERO HUNGER',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: tips.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tips[index]),
          );
        },
      ),
    );
  }
}
