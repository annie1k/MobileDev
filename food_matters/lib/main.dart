import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Railgun Sisters'),
          backgroundColor: Colors.orangeAccent,
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Image(image: AssetImage('image/singlesis.png')),
        ),
      ),
    ),
  );
}
