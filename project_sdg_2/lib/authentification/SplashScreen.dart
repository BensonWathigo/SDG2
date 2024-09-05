import 'package:flutter/material.dart';
import 'package:project_sdg_2/authentification/login.dart';

class Splashscreeen extends StatefulWidget {
  const Splashscreeen({super.key});

  @override
  State<Splashscreeen> createState() => _SplashscreeenState();
}

class _SplashscreeenState extends State<Splashscreeen> {
  @override
  void initState() {
    super.initState();
    _navigateToLogin();
  }

  void _navigateToLogin() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'FOOD WASTE AWARENESS',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'lib/assets/images/splash_screen.jpg',
              width: 500,
            )
          ],
        ),
      ),
    );
  }
}
