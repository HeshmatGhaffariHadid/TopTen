import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:top_ten/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      centered: true,
      splashIconSize: 320,
      splash: Image.asset('images/IMG_1479.PNG'),
      duration: 2500,
      nextScreen: const HomeScreen(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: const Color(0xFF4f3222),
    );
  }
}
