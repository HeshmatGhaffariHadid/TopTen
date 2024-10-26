import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatelessWidget {
  String imageName;
  String name;
  String description;

  ItemDetailsScreen(this.imageName, this.name, this.description, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4f3222),
      appBar: AppBar(
        title: const Text('Details'),
        backgroundColor: Colors.black38,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('images/$imageName.jpg'),

                const SizedBox(height: 10),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    height: 1.2,
                    letterSpacing: 1,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
