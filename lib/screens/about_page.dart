import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4f3222),
      appBar: AppBar(
        title: const Text('About app'),
        backgroundColor: Colors.black38,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Top Ten Masjid Application',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Top Ten application describes the most popular and greatest Masjids all around the world. It\'s information has been gathered from official islamic websites and provides a brief clear information about these holy places in the world, and the 4K images were collected from unsplash.com website which provide free HD and 4K images. I hope it would be effective for you.',
                softWrap: true,
                style: TextStyle(
                  height: 1.2,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Developed by: Heshmat Hadid',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Supervised by: Mr. Ehasan Hasin',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
