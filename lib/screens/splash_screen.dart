import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:top_ten/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      centered: true,
      splashIconSize: 300,
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Image.asset('images/IMG_1479.PNG')),
          const Text('Welcome to Top Ten',textAlign: TextAlign.center,style: TextStyle(
            fontSize: 20,
            color: Color(0xFFffffcc),
            fontWeight: FontWeight.bold,
          ),),
        ],
      ),
      duration: 2000,
      nextScreen: const HomeScreen(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: const Color(0xFF4f3222),
    );
  }
}
