// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  final String itemImage;
  final bool? isSelected;
  const ItemTile({Key? key, required this.itemImage, this.isSelected})
      : super(key: key);

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
          if (isSelected == true)
            const Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/menu/selected_item.png",
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
