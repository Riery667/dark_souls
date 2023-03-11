import 'package:dark_souls/components/detail_consumable_tile.dart';
import 'package:dark_souls/models/consumable.dart';
import 'package:dark_souls/models/inventory_manager.dart';
import 'package:dark_souls/view/inventory_status_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'equipament_items_view.dart';

class EquipamentView extends StatelessWidget {
  static String background = "assets/menu/inventory_background.png";
  const EquipamentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/menu/menu_top_banner.png',
                          ),
                          fit: BoxFit.fill),
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
                                'assets/menu/equipament_icon.png',
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              'Inventory',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
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
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.black26,
                            child: const EquipamentItemsView(),
                          ),
                        ),
                        Expanded(
                          child: Consumer<InventoryManager>(
                            builder: (context, value, child) {
                              if (value.selectedItem == null) {
                                return DecoratedBox(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(background),
                                    ),
                                  ),
                                );
                              } else {
                                return DetailConsumableTile(
                                  item: value.selectedItem as Consumable,
                                );
                              }
                            },
                          ),
                        ),
                        const Expanded(
                          child: InventoryStatusView(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
