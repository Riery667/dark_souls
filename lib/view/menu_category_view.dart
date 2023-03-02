import 'dart:ui';

import 'package:dark_souls/models/inventory_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RowOfCategoryItems extends StatelessWidget {
  RowOfCategoryItems({super.key});
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final inventoryManager =
        Provider.of<InventoryManager>(context, listen: false);
    return ScrollConfiguration(
      behavior: MyCustomScrollBehavior(),
      child: ListView.separated(
        shrinkWrap: true,
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: inventoryManager.category.length,
        separatorBuilder: (context, index) {
          return const Padding(padding: EdgeInsets.all(8));
        },
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              inventoryManager.goToCategory(index);
              debugPrint(inventoryManager.selectedTab.toString());
            },
            child: Container(
              height: 50,
              width: 80,
              color: inventoryManager.category[index],
            ),
          );
        },
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
