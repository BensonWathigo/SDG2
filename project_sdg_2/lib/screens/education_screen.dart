import 'package:flutter/material.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Learn About Food Waste',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Why Reduce Food Waste?',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Reducing food waste can help conserve resources, reduce greenhouse gas emissions, and save money. When food is wasted, all the resources used to produce it are also wasted.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                'Economic Impact',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Food waste costs the global economy billions of dollars each year. Reducing waste can help mitigate these losses and redirect resources to those in need.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                'Environmental Impact',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Wasted food contributes to landfill waste, which generates methane, a potent greenhouse gas. By reducing food waste, we can lower our carbon footprint and help combat climate change.',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
