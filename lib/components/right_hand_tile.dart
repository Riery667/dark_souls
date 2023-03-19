import 'package:flutter/material.dart';

class RightHandTile extends StatelessWidget {
  final String itemImage;
  const RightHandTile({super.key, required this.itemImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/menu/right_hand_slot.png"),
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
    );
  }
}
