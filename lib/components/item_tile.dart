import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  String itemImage;
  ItemTile({super.key, required this.itemImage});

  @override
  Widget build(BuildContext context) {
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
