import 'package:flutter/material.dart';
import 'package:shoppingla/food.dart';
import 'package:shoppingla/login.dart';
import 'package:shoppingla/practice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Login(),
        routes: {
          Practice.id: (context) => Practice(),
          Food.id: (context) => Food()
        });
  }
}
