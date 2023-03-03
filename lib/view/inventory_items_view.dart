import 'package:dark_souls/components/item_tile.dart';
import 'package:dark_souls/models/inventory_manager.dart';
import 'package:dark_souls/view/menu_category_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InventoryItemsView extends StatelessWidget {
  const InventoryItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      Colors.red,
      Colors.green,
      Colors.black,
      Colors.blue,
      Colors.yellow,
    ];
    List<Color> colors2 = [
      Colors.red,
      Colors.black,
      Colors.blue,
      Colors.yellow,
      Colors.green,
    ];

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: LayoutBuilder(
        builder: (contex, BoxConstraints bc) {
          final size = bc.biggest;
          return Column(
            children: [
              //todo: Row of category
              SizedBox(
                height: size.height * 0.15,
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: RowOfCategoryItems(),
                ),
              ),
              //todo: list of items of the selected category
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Consumer<InventoryManager>(
                    builder: (context, value, child) {
                      return GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 5),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          if (value.isLoaded == true) {
                            if (value.selectedTab == 0) {
                              return ItemTile(
                                itemImage: value.consumables[index].image,
                              );
                            } else if (value.selectedTab == 1) {
                              return ItemTile(
                                itemImage: value.weapons[index].image,
                              );
                            } else if (value.selectedTab == 2) {
                              return ItemTile(
                                itemImage: value.shields[index].image,
                              );
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
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
