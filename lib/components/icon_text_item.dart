import 'package:flutter/material.dart';

class IconTextItem extends StatelessWidget {
  final String image;
  final String text;
  static String line = "assets/menu/menu_line.png";

  const IconTextItem({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(image),
            Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
        Image.asset(line)
      ],
    );
  }
}
