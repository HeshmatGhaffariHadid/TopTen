import 'package:flutter/material.dart';
import 'package:top_ten/Clickable_card.dart';
import 'package:top_ten/popup_menu.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Top Ten Mosques'),
          actions: [
            PopUpMenu(),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    ClickableCard(title: 'Masjid al-Haram'),
                    ClickableCard(title: 'Masjid an-Nabawi'),
                    ClickableCard(title: 'Al-Aqsa Masjid'),
                    ClickableCard(title: 'Sheikh Zayed Grand Masjid'),
                    ClickableCard(title: 'Sultan Ahmad Masjid'),
                    ClickableCard(title: 'Hassan II Masjid'),
                    ClickableCard(title: 'Sheikh Lotfollah Masjid'),
                    ClickableCard(title: 'Badshahi Masjid'),
                    ClickableCard(title: 'Quba Masjid'),
                    ClickableCard(title: 'Faisal Masjid'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
