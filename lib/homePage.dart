import 'dart:math';

import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  var first = Random().nextInt(6) + 1, second = Random().nextInt(6) + 1;

  void Roll() {
    setState(() {
      var random = new Random();
      first = random.nextInt(6) + 1;
      second = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Dicee"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: TextButton(
                child: Image.asset("images/dice$first.png"),
                onPressed: Roll,
              ),
            ),
            Expanded(
              child: TextButton(
                child: Image.asset("images/dice$second.png"),
                onPressed: Roll,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
