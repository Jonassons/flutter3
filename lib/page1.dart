// ignore_for_file: prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  double iconSize1 = 24.0; // Initial size for icon 1
  double iconSize2 = 24.0; // Initial size for icon 2
  double iconSize3 = 24.0; // Initial size for icon 3

  bool isIcon1Big = false;
  bool isIcon2Big = false;
  bool isIcon3Big = false;

  // Function to change the size of Icon 1
  void changeSizeIcon1() {
    setState(() {
      isIcon1Big = !isIcon1Big;
      iconSize1 = isIcon1Big ? 48.0 : 24.0;
    });
  }

  // Function to change the size of Icon 2
  void changeSizeIcon2() {
    setState(() {
      isIcon2Big = !isIcon2Big;
      iconSize2 = isIcon2Big ? 48.0 : 24.0;
    });
  }

  // Function to change the size of Icon 3
  void changeSizeIcon3() {
    setState(() {
      isIcon3Big = !isIcon3Big;
      iconSize3 = isIcon3Big ? 48.0 : 24.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: SingleChildScrollView(
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, size: iconSize1),
                Icon(Icons.favorite, size: iconSize2),
                Icon(Icons.cloud, size: iconSize3),
              ],
            ),
            IconButton(
              icon: Icon(Icons.star),
              iconSize: iconSize1,
              onPressed: () => changeSizeIcon1(),
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              iconSize: iconSize2,
              onPressed: () => changeSizeIcon2(),
            ),
            IconButton(
              icon: Icon(Icons.cloud),
              iconSize: iconSize3,
              onPressed: () => changeSizeIcon3(),
            ),
            Image.network("https://media.snusbolaget.se/snusbolaget/images/swm-823-2023-03-27-195525375/0/0/2/goteborgs-rape-lossnus.png"),
            SizedBox(height: 16),
            Text('Press Icons to change size!'),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/page2');
                },
                child: Text('Go to Page 2'),
                
              ),
            ),
          ],
        )
        ),
      ),
    );
  }
}
