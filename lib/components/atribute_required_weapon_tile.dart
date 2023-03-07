// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:dark_souls/icons_assets.dart';

import '../models/weapon.dart';

class AttributeRequiredWeaponTile extends StatelessWidget {
  final Weapon weapon;
  final bool hasStrRequiriment;
  final bool hasDexRequiriment;
  final bool hasIntRequiriment;
  final bool hasFthRequiriment;

  static String line = "assets/menu/menu_line.png";
  const AttributeRequiredWeaponTile({
    Key? key,
    required this.weapon,
    required this.hasStrRequiriment,
    required this.hasDexRequiriment,
    required this.hasIntRequiriment,
    required this.hasFthRequiriment,
  }) : super(key: key);

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
                  style: TextStyle(
                      color: hasStrRequiriment
                          ? Colors.orange[100]
                          : Colors.red[700]),
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
                  style: TextStyle(
                      color: hasDexRequiriment
                          ? Colors.orange[100]
                          : Colors.red[700]),
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
                  weapon.faithRequired.toString(),
                  style: TextStyle(
                      color: hasFthRequiriment
                          ? Colors.orange[100]
                          : Colors.red[700]),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
