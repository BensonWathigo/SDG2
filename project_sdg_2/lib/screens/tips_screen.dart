import 'package:flutter/material.dart';

class TipsScreen extends StatelessWidget {
  final List<String> tips = [
    "Plan your meals for the week to avoid buying unnecessary items.",
    "Store fruits and vegetables properly to extend their freshness.",
    "Use leftovers creatively to make new meals.",
    "Check your fridge before shopping to avoid buying what you already have.",
    "Keep your pantry organized to prevent food from going to waste.",
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
      body: Column(
        children: [
          // Include CalculatorForm at the top
          const CalculatorForm(),
          const Text(
            "Tips on how to reduce food wastage",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: tips.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(tips[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

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
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const Text(
              "Let's commence by compairing how much of your food goes to waste after every purchase. Click the button 'Calculate waste' to get the amount of food that's actually wasted."),
          const SizedBox(height: 20),
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
          Center(
            child: Text(_result,
                style: const TextStyle(fontSize: 15, color: Colors.redAccent)),
          ),
        ],
      ),
    );
  }
}
