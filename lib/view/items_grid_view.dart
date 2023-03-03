import 'package:dark_souls/components/item_tile.dart';
import 'package:dark_souls/models/inventory_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemsGridVIew extends StatelessWidget {
  const ItemsGridVIew({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<InventoryManager>(
      builder: (context, value, child) {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4),
          itemCount: 5,
          itemBuilder: (context, index) {
            const mockServiceLoaded = true;
            if (value.isLoaded == mockServiceLoaded) {
              //CONSUMABLES
              if (value.selectedTab == 0) {
                return ItemTile(
                  itemImage: value.consumables[index].image,
                );

                //WEAPONS
              } else if (value.selectedTab == 1) {
                return ItemTile(
                  itemImage: value.weapons[index].image,
                );

                //SHIELDS
              } else if (value.selectedTab == 2) {
                return ItemTile(
                  itemImage: value.shields[index].image,
                );

                //SPEELS
              } else if (value.selectedTab == 3) {
                return ItemTile(
                  itemImage: value.speels[index].image,
                );
              }
              return null;
            }
            return null;
          },
        );
      },
    );
  }
}
