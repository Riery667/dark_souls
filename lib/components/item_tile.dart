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
            top: 50,
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
              height: 75,
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
