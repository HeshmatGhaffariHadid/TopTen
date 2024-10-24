import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatelessWidget {
  String imageName;
  String name;
  String description;

  ItemDetailsScreen(this.imageName, this.name, this.description);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4f3222),
      appBar: AppBar(
        title: Text('Details'),
        backgroundColor: Colors.black38,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('images/$imageName.jpg'),

                SizedBox(height: 10),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
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
