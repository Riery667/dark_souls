import 'package:dark_souls/home.dart';
import 'package:dark_souls/models/models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const DarkSouls());
}

class DarkSouls extends StatelessWidget {
  const DarkSouls({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => InventoryManager(),
        ),
        ChangeNotifierProvider(
          create: (context) => PlayerStatusManager(),
        )
      ],
      child: MaterialApp(
        title: 'Dark souls Study',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Home(),
      ),
    );
  }
}
