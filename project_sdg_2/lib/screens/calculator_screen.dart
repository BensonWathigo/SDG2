import 'package:flutter/material.dart';
import '../widgets/calculator_form.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Center(
            child: Text(
          'Food Waste Calculator',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: CalculatorForm(),
      ),
    );
  }
}
