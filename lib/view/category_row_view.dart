import 'dart:ui';

import 'package:dark_souls/components/category_tile.dart';
import 'package:dark_souls/models/inventory_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryRowView extends StatelessWidget {
  CategoryRowView({super.key});
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final inventoryManager =
        Provider.of<InventoryManager>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ScrollConfiguration(
        behavior: MyCustomScrollBehavior(),
        child: ListView.separated(
          shrinkWrap: true,
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          itemCount: inventoryManager.categoryImage.length,
          separatorBuilder: (context, index) {
            return const Padding(padding: EdgeInsets.all(8));
          },
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                inventoryManager.goToTab(index);
              },
              child: SizedBox(
                width: 100,
                child: CategoryTile(
                  categoryimage: inventoryManager.categoryImage[index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
