import 'package:flutter/material.dart';
import 'package:top_ten/screens/item_details_screen.dart';
class ClickableCard extends StatelessWidget {

  final String name;
  final String description;
  final String imageName;
  ClickableCard({required this.imageName,required this.name, required this.description});
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.all(4),
      child: GestureDetector(
        onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    ItemDetailsScreen(imageName, name, description),
              ),
            );
        },
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            color: Colors.black38,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              name,
              style: TextStyle(
                letterSpacing: 1,
                color: Color(0xFFead5ca),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

