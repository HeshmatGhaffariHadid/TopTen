import 'package:flutter/material.dart';
class ClickableCard extends StatefulWidget {
  final String title;
ClickableCard({required this.title });

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
            print(widget.title);
          },
          child: Container(
            decoration: BoxDecoration(
              // color: Colors.blue,
              gradient: LinearGradient(
                  colors: [Colors.blue.shade900, Colors.blueAccent.shade400],
              ),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.blue.shade800),
            ),
            child: Center(
              child: Text(widget.title,
                  style: TextStyle(
                      color: Colors.white,
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
