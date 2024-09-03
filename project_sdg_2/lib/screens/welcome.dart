import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            'HOME PAGE',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Welcome !',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Image.asset("lib/assets/images/homepage.jpg"),
              const SizedBox(height: 10),
              const Text(
                'We are glad to have you here. Join us in our campaign motivated by sustainable goal number 2 #ZeroHunger.',
                style: TextStyle(fontSize: 18),
              ),
              const Text(
                'Our mission is help milllions of Africans starting with Kenya end the hunger problem. Our point of focus as forseeen on a cartesian plane is the North Rift Kenya and later other parts of Africa.',
                style: TextStyle(fontSize: 18),
              ),
              TextButton(onPressed: () {}, child: const Text('Donate')),
              const SizedBox(height: 20),
              const Text(
                "Blessed is the hand that gives for more shall be added unto him. Thanks for being your brother's keeper",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              Transform.rotate(
                angle: 45,
                child: const Text(
                  "Audios Muchachos",
                  style: TextStyle(fontSize: 15, color: Colors.yellowAccent),
                ),
              ),
            ]),
          ),
        ));
  }
}
