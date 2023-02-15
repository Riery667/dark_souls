import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const DarkSouls());
}

class DarkSouls extends StatelessWidget {
  const DarkSouls({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Dark souls Study',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Home());
  }
}
