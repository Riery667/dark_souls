import 'package:dark_souls/icons_assets.dart';
import 'package:dark_souls/models/spell.dart';
import 'package:flutter/material.dart';

class AttributeRequiredSpellTile extends StatelessWidget {
  final Spell spell;
  static String line = "assets/menu/menu_line.png";
  final bool hasIntRequiriment;
  final bool hasFthRequiriment;
  const AttributeRequiredSpellTile(
      {super.key,
      required this.spell,
      required this.hasIntRequiriment,
      required this.hasFthRequiriment});

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
                  style: TextStyle(
                      color: hasIntRequiriment
                          ? Colors.orange[100]
                          : Colors.red[700]),
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
                  style: TextStyle(
                      color: hasFthRequiriment
                          ? Colors.orange[100]
                          : Colors.red[700]),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
