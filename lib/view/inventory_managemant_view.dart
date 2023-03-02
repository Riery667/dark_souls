import 'package:dark_souls/models/inventory_manager.dart';
import 'package:dark_souls/view/menu_category_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InventoryManagermentView extends StatelessWidget {
  const InventoryManagermentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<InventoryManager>(
      builder: (context, value, child) {
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
                  //todo: list of itens of the selected category
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          if (value.selectedTab == 0) {
                            return Container(
                              color: Colors.white,
                              height: 100,
                              child: GridView.count(
                                crossAxisCount: crossAxisCount,
                              ),
                            );
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
