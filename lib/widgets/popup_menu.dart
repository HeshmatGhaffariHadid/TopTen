import 'package:flutter/material.dart';

class PopUpMenu extends StatelessWidget {
   late final String selectedOption;

  @override
  Widget build(BuildContext context) {
    return  PopupMenuButton(
      onSelected: (String selected) {
        selectedOption = selected;
      },
      itemBuilder: (BuildContext context) => [
        PopupMenuItem(
          value: 'share',
          child: Text('Share the app'),
        ),
        PopupMenuItem(
          value: 'about',
          child: Text('About'),
        ),
        PopupMenuItem(
          value: 'exit',
          child: Text('Exit'),
        ),
      ],
    );

  }
}
