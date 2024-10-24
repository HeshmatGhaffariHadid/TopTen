import 'package:flutter/material.dart';
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Text('Top Ten Masjid Application',style: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Colors.lime,
    ),),
    SizedBox(height: 30),
    Text('description about application',style: TextStyle(
      fontSize: 20,
      color: Colors.lime,
    ),),
  ],
),
    );
  }
}
