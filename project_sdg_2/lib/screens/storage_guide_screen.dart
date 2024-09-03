import 'package:flutter/material.dart';

class StorageGuideScreen extends StatelessWidget {
  final Map<String, String> storageTips = {
    "Bananas": "Store at room temperature, away from other fruits.",
    "Bread": "Store in a bread box or a cool, dry place.",
    "Tomatoes": "Store at room temperature until ripe, then refrigerate.",
    "Potatoes": "Store in a cool, dark place, away from onions.",
    "Apples": "Store in the fridge to keep them fresh longer."
  };

  StorageGuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Center(
            child: Text(
          'Food Storage Guide',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
      body: ListView(
        children: storageTips.entries.map((entry) {
          return ListTile(
            title: Text(entry.key),
            subtitle: Text(entry.value),
          );
        }).toList(),
      ),
    );
  }
}
