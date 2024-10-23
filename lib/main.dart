import 'package:flutter/material.dart';
import 'package:top_ten/screens/home_screen.dart';
import 'package:top_ten/screens/splash_screen.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/' : (context) => SplashScreen(),
          // '/item' : (context) => ItemDetailsScreen(),
          '/home' : (context) => HomeScreen(),
        },
        // home: SplashScreen(),
      ),
    );