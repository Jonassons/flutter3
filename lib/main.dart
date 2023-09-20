// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'page1.dart'; // Import your Page1 widget
import 'page2.dart'; // Import your Page2 widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter v.1',
      initialRoute: '/', // Specify the initial route
      routes: {
        '/': (context) => Page1(), // Define the route to Page1
        '/page2': (context) => Page2(), // Define the route to Page2
      },
      theme: ThemeData(
        // Define your app's theme here
        primarySwatch: Colors.blue,
      ),
    );
  }
}
