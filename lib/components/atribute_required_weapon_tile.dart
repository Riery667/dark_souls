import 'package:dark_souls/icons_assets.dart';
import 'package:flutter/material.dart';

import '../models/weapon.dart';

class AttributeRequiredWeaponTile extends StatelessWidget {
  final Weapon weapon;
  static String line = "assets/menu/menu_line.png";
  const AttributeRequiredWeaponTile({super.key, required this.weapon});

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  IconsAssets.strength,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  weapon.strengthRequired.toString(),
                  style: TextStyle(color: Colors.orange[100]),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  IconsAssets.dexterity,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  weapon.dexterityRequired.toString(),
                  style: TextStyle(color: Colors.orange[100]),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  IconsAssets.inteligence,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  weapon.inteligenceRequired.toString(),
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
                  weapon.faithRequired.toString(),
                  style: TextStyle(color: Colors.orange[100]),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
