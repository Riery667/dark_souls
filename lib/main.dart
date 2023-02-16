import 'package:dark_souls/models/models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => SettingsTabManager(),
          ),
          ChangeNotifierProvider(
            create: (context) => PlayerStatusManager(),
          )
        ],
        child: const Home(),
      ),
    );
  }
}
