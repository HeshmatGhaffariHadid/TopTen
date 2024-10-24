import 'package:flutter/material.dart';
import 'package:top_ten/screens/about_page.dart';
import 'package:top_ten/screens/home_screen.dart';
import 'package:top_ten/screens/splash_screen.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/' : (context) => const SplashScreen(),
          '/about' : (context) => const AboutPage(),
          '/home' : (context) => const HomeScreen(),
        },
        // home: SplashScreen(),
      ),
    );