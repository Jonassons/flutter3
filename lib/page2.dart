// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'dart:math';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final List<Widget> snusTextWidgets = [];

  void addSnusText() {
    setState(() {
      // Generate random positions for the "Snus" text
      final random = Random();
      final x = random.nextDouble() * MediaQuery.of(context).size.width; // Adjust these values as needed
      final y = random.nextDouble() * MediaQuery.of(context).size.height; // Adjust these values as needed

      // Add a new SnusTextWidget to the list
      snusTextWidgets.add(
        _SnusTextWidget(
          text: 'Snus',
          x: x,
          y: y,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Stack(
          children: [
            // Place SnusTextWidgets on the screen
            ...snusTextWidgets,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addSnusText,
        child: Icon(Icons.add),
      ),
    );
  }
}

class _SnusTextWidget extends StatelessWidget {
  final String text;
  final double x;
  final double y;

  _SnusTextWidget({
    required this.text,
    required this.x,
    required this.y,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: x,
      top: y,
      child: Text(text),
    );
  }
}
