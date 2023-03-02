import 'package:dark_souls/view/inventory_items_view.dart';
import 'package:flutter/material.dart';

class InventoryView extends StatelessWidget {
  const InventoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: LayoutBuilder(
        builder: (context, BoxConstraints bc) {
          final size = bc.biggest;
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                //todo: label
                SizedBox(
                  width: size.width - 8,
                  //- 8 for Padding
                  height: size.height * 0.2 - 8,
                  child: Stack(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/menu/menu_top_banner.png',
                            ),
                          ),
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
                                    'assets/menu/inventory_icon.png',
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Text(
                                  'Inventory',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
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
                    SizedBox(
                      width: size.width - 8,
                      //- 8 for Padding
                      height: size.height * 0.8 - 8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          //todo: category of item
                          SizedBox(
                            height: size.height,
                            width: size.width / 3 - 20,
                            child: const InventoryItemsView(),
                          ),
                          Container(
                            color: Colors.red.shade200,
                            height: size.height,
                            width: size.width / 3 - 20,
                          ),
                          Container(
                            color: Colors.red.shade200,
                            height: size.height,
                            width: size.width / 3 - 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
