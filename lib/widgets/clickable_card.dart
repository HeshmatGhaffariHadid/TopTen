import 'package:flutter/material.dart';
import 'package:top_ten/screens/item_details_screen.dart';

import '../masjid.dart';

class ClickableCard extends StatefulWidget {

  final String name;
  ClickableCard({required this.name});

  @override
  State<ClickableCard> createState() => _ClickableCardState();
}

class _ClickableCardState extends State<ClickableCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: GestureDetector(
          onTap: () {
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ItemDetailsScreen(),
                ),
              );
            });
          },
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                widget.name,
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
      ),
    );
  }
}
