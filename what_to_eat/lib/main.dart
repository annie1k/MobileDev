import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text('WHAT TO EAT'),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: FoodPage(),
      ),
    ),
  );
}

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int foodType = 1;

  void changeFood() {
    setState(() {
      foodType = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 130, 0, 130),
      child: (Expanded(
        flex: 1,
        child: FlatButton(
          onPressed: () {
            changeFood();
          },
          child: Image.asset('image/food$foodType.jpg'),
        ),
      )),
    );
  }
}
