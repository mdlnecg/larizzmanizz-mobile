import 'package:flutter/material.dart';
import 'package:larizzmanizz/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'larizzmanizz',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.brown,
        ).copyWith(secondary: Colors.brown[600]),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
