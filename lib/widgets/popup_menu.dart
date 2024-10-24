import 'dart:io';
import 'package:flutter/material.dart';
import 'package:top_ten/screens/item_details_screen.dart';

class PopUpMenu extends StatelessWidget {
  late final String selectedOption;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: Color(0xFF4f3222),
      onSelected: (String selected) {
        selectedOption = selected;
      },
      itemBuilder: (BuildContext context) => [
        PopupMenuItem(
          value: 'share',
          child: Text('Share the app',style: TextStyle(
            color: Colors.white
          ),),
        ),
        PopupMenuItem(
          value: 'about',
          child: Text('About Us',style: TextStyle(
              color: Colors.white
          ),),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ItemDetailsScreen('','',''),
              ),
            );
          },
        ),
        PopupMenuItem(
          value: 'exit',
          child: Text('Exit App',style: TextStyle(
              color: Colors.white
          ),),
          onTap: () {
            exit(0);
          },
        ),
      ],
    );
  }
}
