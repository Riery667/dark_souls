import 'package:dark_souls/components/atribute_required_spell_tile.dart';
import 'package:dark_souls/components/icon_text_item.dart';
import 'package:dark_souls/icons_assets.dart';
import 'package:dark_souls/models/spell.dart';
import 'package:flutter/material.dart';

class DetailSpellTile extends StatelessWidget {
  final Spell spell;
  static String dishImage = "assets/main_screen/dish.png";
  static String background = "assets/menu/inventory_background.png";
  static String line = "assets/menu/menu_line.png";
  const DetailSpellTile({super.key, required this.spell});

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
                                spell.name,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Image.asset(line)
                            ],
                          ),
                          IconTextItem(
                              image: IconsAssets.manaCost,
                              text: "FP cost -${spell.manaCost.toString()}"),
                          IconTextItem(
                              image: IconsAssets.damage,
                              text:
                                  "Attack Power X.${spell.damage.toString()}"),
                          IconTextItem(
                              image: IconsAssets.slots,
                              text: "Slot ${spell.slotsUsed.toString()}"),
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
                                spell.image,
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
                          spell.description,
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: AttributeRequiredSpellTile(
                          spell: spell,
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
