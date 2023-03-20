// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dark_souls/models/inventory_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemTile extends StatelessWidget {
  final String itemImage;
  final bool? isSelected;
  final bool? isEquiped;
  final bool? hasPosition;
  const ItemTile(
      {Key? key,
      required this.itemImage,
      this.isSelected,
      this.isEquiped,
      this.hasPosition})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inventory = Provider.of<InventoryManager>(context, listen: false);
    return SizedBox(
      child: Stack(
        children: [
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/menu/rised_item.png",
                  ),
                ),
              ),
            ),
          ),
          // if (hasPosition == true)
          //   Positioned(
          //     top: 0,
          //     left: 40,
          //     child: Text(
          //       inventory.rightHandEquipament[inventory.position].toString(),
          //     ),
          //   ),
          if (isEquiped == true)
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/menu/icon_equiped.png",
              ),
            ),
          if (isSelected == true)
            const Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/menu/selected_item.png",
                    ),
                  ),
                ),
              ),
            ),
          Center(
            child: SizedBox(
              height: 80,
              width: 80,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      "assets/main_screen/dish.png",
                    ),
                  ),
                  Image.asset(
                    itemImage,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
