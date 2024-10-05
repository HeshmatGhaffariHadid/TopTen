import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  String selectedOption = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Top Ten Masques'),
          actions: [
            PopupMenuButton(
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
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
print('hello');
                },
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blue.shade800),
                  ),
                  child: Center(
                    child: Text('Makah',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
