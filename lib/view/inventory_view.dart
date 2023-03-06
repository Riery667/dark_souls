import 'package:dark_souls/components/detail_consumable_tile.dart';
import 'package:dark_souls/components/detail_shield_tile.dart';
import 'package:dark_souls/components/detail_speel_tile.dart';
import 'package:dark_souls/components/detail_weapon_tile.dart';
import 'package:dark_souls/icons_assets.dart';
import 'package:dark_souls/models/models.dart';
import 'package:dark_souls/models/spell.dart';
import 'package:dark_souls/view/inventory_items_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InventoryView extends StatelessWidget {
  static String background = "assets/menu/inventory_background.png";
  const InventoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: LayoutBuilder(
        builder: (context, BoxConstraints bc) {
          final size = bc.biggest;
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                //todo: label
                SizedBox(
                  width: size.width - 8,
                  //- 8 for Padding
                  height: size.height * 0.2 - 8,
                  child: Stack(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/menu/menu_top_banner.png',
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 50,
                        top: 10,
                        right: 0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 60,
                                  width: 60,
                                  child: Image.asset(
                                    'assets/menu/inventory_icon.png',
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Text(
                                  'Inventory',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    const Positioned.fill(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'assets/menu/high_menu.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width - 8,
                      //- 8 for Padding
                      height: size.height * 0.8 - 8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          //todo: category of item
                          SizedBox(
                            height: size.height,
                            width: size.width / 3 - 20,
                            child: const InventoryItemsView(),
                          ),
                          SizedBox(
                            height: size.height,
                            width: size.width / 3 - 20,
                            //conumable
                            //switch
                            child: Consumer<InventoryManager>(
                              builder: (context, value, child) {
                                if (value.selectedItem.runtimeType ==
                                    Consumable) {
                                  return DetailConsumableTile(
                                      item: value.selectedItem);
                                } else if (value.selectedItem.runtimeType ==
                                    Weapon) {
                                  return DetailWeaponTile(
                                    weapon: value.selectedItem,
                                  );
                                } else if (value.selectedItem.runtimeType ==
                                    Shield) {
                                  return DetailShieldTile(
                                      shield: value.selectedItem);
                                } else if (value.selectedItem.runtimeType ==
                                    Spell) {
                                  return DetailSpellTile(
                                      spell: value.selectedItem);
                                } else {
                                  return Positioned.fill(
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(background),
                                        ),
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                          Container(
                            color: Colors.red.shade200,
                            height: size.height,
                            width: size.width / 3 - 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
