import 'package:dark_souls/view/items_grid_view.dart';
import 'package:dark_souls/view/category_view.dart';
import 'package:flutter/material.dart';

class InventoryItemsView extends StatelessWidget {
  const InventoryItemsView({super.key});

  @override
  Widget build(BuildContext context) {
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
                  child: CategoryView(),
                ),
              ),
              //todo: list of items of the selected category
              Expanded(
                child: Stack(
                  children: const [
                    Positioned.fill(
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
                    Positioned.fill(
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
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: ItemsGridVIew(),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
