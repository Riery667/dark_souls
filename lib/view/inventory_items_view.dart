import 'package:dark_souls/view/items_grid_view.dart';
import 'package:dark_souls/view/category_row_view.dart';
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
                child: CategoryRowView(),
              ),
              //todo: list of items of the selected category
              const Expanded(
                child: ItemsGridVIew(),
              ),
            ],
          );
        },
      ),
    );
  }
}
