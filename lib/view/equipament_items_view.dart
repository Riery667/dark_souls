import 'package:dark_souls/components/right_hand_tile.dart';
import 'package:dark_souls/components/right_hand_tile_null.dart';
import 'package:dark_souls/models/inventory_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EquipamentItemsView extends StatelessWidget {
  static String background = "assets/menu/inventory_background.png";
  static String consumableSlotImage = "assets/menu/consumable_slot.png";
  static String covenantSlotImage = "assets/menu/convenant_slot.png";
  static String leftHandSlotImage = "assets/menu/left_hand_slot.png";
  static String rightHandSlotImage = "assets/menu/right_hand_slot.png";
  static String line = "assets/menu/menu_line.png";
  const EquipamentItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
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
                Center(
                  child: Column(
                    children: [
                      const Text(
                        'Right Hand Weapon 1',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 172, 99),
                          fontSize: 14,
                        ),
                      ),
                      Image.asset(line),
                      const Text(
                        'Dragonslayer Axe',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 95,
                          child: Consumer<InventoryManager>(
                            builder: (context, value, child) {
                              return ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemCount: value.rightHandEquipament.length,
                                separatorBuilder: (context, index) =>
                                    const Padding(padding: EdgeInsets.all(8)),
                                itemBuilder: (context, i) {
                                  if (value.rightHandEquipament[i] == null) {
                                    return const SizedBox(
                                      width: 75,
                                      child: RightHandTileNull(),
                                    );
                                  } else {
                                    return SizedBox(
                                      width: 75,
                                      child: RightHandTile(
                                          itemImage: value
                                              .rightHandEquipament[i]!.image),
                                    );
                                  }
                                },
                              );
                            },
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                      //   child: SizedBox(
                      //     height: 95,
                      //     width: 500,
                      //     child: ListView.separated(
                      //       scrollDirection: Axis.horizontal,
                      //       itemCount: colors.length - 8,
                      //       separatorBuilder: (context, index) =>
                      //           const Padding(padding: EdgeInsets.all(8)),
                      //       itemBuilder: (context, index) => const SizedBox(
                      //         height: 95,
                      //         width: 75,
                      //         child: DecoratedBox(
                      //           decoration: BoxDecoration(
                      //             image: DecorationImage(
                      //               fit: BoxFit.fill,
                      //               image: AssetImage(
                      //                   "assets/menu/left_hand_slot.png"),
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // const Expanded(
                      //   child: SizedBox.shrink(),
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: SizedBox(
                      //     height: 95,
                      //     width: 500,
                      //     child: ListView.separated(
                      //       scrollDirection: Axis.horizontal,
                      //       itemCount: colors.length - 7,
                      //       separatorBuilder: (context, index) =>
                      //           const Padding(padding: EdgeInsets.all(8)),
                      //       itemBuilder: (context, index) => const SizedBox(
                      //         height: 95,
                      //         width: 75,
                      //         child: DecoratedBox(
                      //           decoration: BoxDecoration(
                      //             image: DecorationImage(
                      //               fit: BoxFit.fill,
                      //               image: AssetImage(
                      //                   "assets/menu/consumable_slot.png"),
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                      //   child: SizedBox(
                      //     height: 95,
                      //     width: 500,
                      //     child: ListView.separated(
                      //       scrollDirection: Axis.horizontal,
                      //       itemCount: colors.length - 7,
                      //       separatorBuilder: (context, index) =>
                      //           const Padding(padding: EdgeInsets.all(8)),
                      //       itemBuilder: (context, index) => const SizedBox(
                      //         height: 95,
                      //         width: 75,
                      //         child: DecoratedBox(
                      //           decoration: BoxDecoration(
                      //             image: DecorationImage(
                      //               fit: BoxFit.fill,
                      //               image: AssetImage(
                      //                   "assets/menu/consumable_slot.png"),
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
