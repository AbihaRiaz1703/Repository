import 'package:flutter/material.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TabBar(tabs: [
        Text('food'),
      ]),
    );
  }
}
