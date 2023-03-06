import 'package:dark_souls/icons_assets.dart';
import 'package:dark_souls/models/spell.dart';
import 'package:flutter/material.dart';

class AttributeRequiredSpellTile extends StatelessWidget {
  final Spell spell;
  static String line = "assets/menu/menu_line.png";
  const AttributeRequiredSpellTile({super.key, required this.spell});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Attribute requirement",
            style: TextStyle(color: Colors.orange[100])),
        Image.asset(
          line,
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Image.asset(
                  IconsAssets.inteligence,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  spell.inteligenceRequired.toString(),
                  style: TextStyle(color: Colors.orange[100]),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  IconsAssets.faith,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  spell.faithRequired.toString(),
                  style: TextStyle(color: Colors.orange[100]),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
