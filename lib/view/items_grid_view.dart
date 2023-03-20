import 'package:dark_souls/components/item_tile.dart';
import 'package:dark_souls/models/inventory_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemsGridVIew extends StatelessWidget {
  const ItemsGridVIew({super.key});
  static String background = "assets/menu/right_hand_slot.png";

  @override
  Widget build(BuildContext context) {
    return Consumer<InventoryManager>(
      builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: [
              const Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        "assets/menu/inventory_background.png",
                      ),
                    ),
                  ),
                ),
              ),
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemCount: 5,
                itemBuilder: (context, index) {
                  if (value.isLoaded) {
                    //CONSUMABLES
                    if (value.selectedTab == 0) {
                      return GestureDetector(
                        onTap: () {
                          value.showConsumable(value.consumables[index]);
                        },
                        onDoubleTap: () {
                          value.addItemToInventory(value.consumables[index]);
                        },
                        child: ItemTile(
                          itemImage: value.consumables[index].image,
                          isSelected:
                              value.selectedItem == value.consumables[index],
                        ),
                      );

                      //WEAPONS
                    } else if (value.selectedTab == 1) {
                      return GestureDetector(
                        onTap: () {
                          value.showWeapon(value.weapons[index]);
                        },
                        onDoubleTap: () {
                          // if (value.rightHandEquipament
                          //     .contains(value.weapons[index])) {
                          //   value.removeItemOfInventory(value.weapons[index]);
                          // }
                          // value.addItemToInventory(value.weapons[index]);
                          showGeneralDialog(
                            barrierDismissible: true,
                            barrierLabel: "slot",
                            context: context,
                            pageBuilder:
                                (context, animation, secondaryAnimation) {
                              return Center(
                                child: Container(
                                  color: Colors.black54,
                                  height: 100,
                                  width: 250,
                                  child: Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          value.position = 0;
                                          if (value.rightHandEquipament
                                              .contains(value.weapons[index])) {
                                            value.removeItemOfInventory(
                                                value.weapons[index]);
                                            return;
                                          }

                                          value.addItemToInventory(
                                              value.weapons[index]);
                                        },
                                        child: SizedBox(
                                          height: 75,
                                          width: 75,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(background),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          value.position = 1;
                                          if (value.rightHandEquipament
                                              .contains(value.weapons[index])) {
                                            value.removeItemOfInventory(
                                                value.weapons[index]);
                                            return;
                                          }
                                          value.addItemToInventory(
                                              value.weapons[index]);
                                        },
                                        child: SizedBox(
                                          height: 75,
                                          width: 75,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(background),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          value.position = 2;
                                          if (value.rightHandEquipament
                                              .contains(value.weapons[index])) {
                                            value.removeItemOfInventory(
                                                value.weapons[index]);
                                            return;
                                          }
                                          value.addItemToInventory(
                                              value.weapons[index]);
                                        },
                                        child: SizedBox(
                                          height: 75,
                                          width: 75,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(background),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: ItemTile(
                          itemImage: value.weapons[index].image,
                          isSelected:
                              value.selectedItem == value.weapons[index],
                          isEquiped: value.rightHandEquipament
                              .contains(value.weapons[index]),
                          // hasPosition: value.rightHandEquipament
                          //     .contains(value.weapons[index]),
                        ),
                      );

                      //SHIELDS
                    } else if (value.selectedTab == 2) {
                      return GestureDetector(
                        onTap: () {
                          value.showShield(value.shields[index]);
                        },
                        onDoubleTap: () {
                          value.addItemToInventory(value.shields[index]);
                        },
                        child: ItemTile(
                          itemImage: value.shields[index].image,
                          isSelected:
                              value.selectedItem == value.shields[index],
                        ),
                      );

                      //SPELLS
                    } else if (value.selectedTab == 3) {
                      return GestureDetector(
                        onTap: () {
                          value.showSpell(value.spells[index]);
                        },
                        onDoubleTap: () {
                          value.addItemToInventory(value.spells[index]);
                        },
                        child: ItemTile(
                          itemImage: value.spells[index].image,
                          isSelected: value.selectedItem == value.spells[index],
                        ),
                      );
                    }
                    return null;
                  }
                  return null;
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
