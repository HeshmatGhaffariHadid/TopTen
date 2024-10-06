import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen\.dart';
import 'package:top_ten/main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Text('Welcome to Top Ten Masjids Application',textAlign: TextAlign.center,style: TextStyle(
          fontSize: 22,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
        duration: 3000,
        nextScreen: HomePage(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.blue,
    );
  }
}
