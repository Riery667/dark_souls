import 'package:flutter/material.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          //todo: mainButtons
          Row(
            children: [
              //todo: EquipamentView
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  height: 75,
                  width: 75,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/menu/equipament_icon.png',
                      ),
                    ),
                  ),
                ),
              ),
              //todo: InventoryView
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 75,
                  width: 75,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/menu/inventory_icon.png',
                      ),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      showGeneralDialog(
                        barrierDismissible: true,
                        barrierLabel: 'inventory',
                        context: context,
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return Center(
                            child: Container(
                              height: 600,
                              width: 800,
                              color: Colors.red.shade200,
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              //todo: StatusView
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 75,
                  width: 75,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/menu/status_icon.png',
                      ),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      showGeneralDialog(
                        barrierDismissible: true,
                        barrierLabel: 'status',
                        context: context,
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return Center(
                            child: Container(
                              height: 600,
                              width: 800,
                              color: Colors.blue.shade200,
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
