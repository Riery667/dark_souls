import 'package:flutter/material.dart';

class PladgeView extends StatefulWidget {
  const PladgeView({super.key});

  @override
  State<PladgeView> createState() => _PladgeViewState();
}

class _PladgeViewState extends State<PladgeView> {
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/pladges/menu_standart_pledge_icon.png');
  }
}
