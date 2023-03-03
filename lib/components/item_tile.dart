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
          const Positioned.fill(
            top: 60,
            left: 0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/main_screen/dish.png",
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              height: 105,
              child: Image.asset(
                itemImage,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
