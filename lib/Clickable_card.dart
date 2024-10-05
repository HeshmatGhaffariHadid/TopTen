import 'package:flutter/material.dart';
class ClickableCard extends StatelessWidget {
  final String title;
ClickableCard({required this.title });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: GestureDetector(
          onTap: () {
            print(title);
          },
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.blue.shade800),
            ),
            child: Center(
              child: Text(title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ),
    );
  }
}
