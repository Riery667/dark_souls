// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dark_souls/components/atribute_required_tile.dart';
import 'package:flutter/material.dart';

import 'package:dark_souls/components/icon_text_item.dart';
import 'package:dark_souls/icons_assets.dart';
import 'package:dark_souls/models/models.dart';

class DetailWeaponTile extends StatelessWidget {
  final Weapon weapon;

  static String dishImage = "assets/main_screen/dish.png";
  static String background = "assets/menu/inventory_background.png";
  static String line = "assets/menu/menu_line.png";

  const DetailWeaponTile({
    Key? key,
    required this.weapon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(background),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                flex: 7,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Text(
                                weapon.name,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Image.asset(line)
                            ],
                          ),
                          IconTextItem(
                              image: IconsAssets.weaponType,
                              text: weapon.category),
                          IconTextItem(
                              image: IconsAssets.attackType,
                              text: weapon.attackType),
                          const SizedBox(
                            height: 15,
                          ),
                          IconTextItem(
                              image: IconsAssets.skill, text: weapon.skill),
                          IconTextItem(
                              image: IconsAssets.manaCost,
                              text: "FP cost -${weapon.costMana.toString()}"),
                          IconTextItem(
                              image: IconsAssets.weight,
                              text: "Weight ${weapon.weight.toString()}"),
                          IconTextItem(
                              image: IconsAssets.durability,
                              text:
                                  "Durablity ${weapon.durability.toString()}"),
                          const SizedBox(
                            height: 15,
                          ),
                          IconTextItem(
                              image: IconsAssets.damage,
                              text: "Attack Power ${weapon.damage.toString()}"),
                        ],
                      ),
                    ),
                    //Icon
                    Expanded(
                      child: Center(
                        child: SizedBox(
                          height: 200,
                          width: 200,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Image.asset(
                                  dishImage,
                                ),
                              ),
                              Image.asset(
                                weapon.image,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Text(
                          weapon.description,
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: AttributeRequiredTile(
                          weapon: weapon,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
