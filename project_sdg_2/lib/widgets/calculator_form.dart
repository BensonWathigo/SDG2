import 'package:flutter/material.dart';

class CalculatorForm extends StatefulWidget {
  const CalculatorForm({super.key});

  @override
  _CalculatorFormState createState() => _CalculatorFormState();
}

class _CalculatorFormState extends State<CalculatorForm> {
  final TextEditingController _foodWasteController = TextEditingController();

  String _result = '';

  void _calculateWaste() {
    final quantity = double.tryParse(_foodWasteController.text) ?? 0;
    setState(() {
      _result =
          'You waste approximately ${quantity * 0.3} kg of food per week.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: _foodWasteController,
          decoration: const InputDecoration(
            labelText: 'Enter the amount of food you buy each week (kg)',
          ),
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _calculateWaste,
          child: const Text('Calculate Waste'),
        ),
        const SizedBox(height: 20),
        Text(_result, style: const TextStyle(fontSize: 18)),
      ],
    );
  }
}
