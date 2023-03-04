import 'package:flutter/material.dart';

class DetailItemTile extends StatelessWidget {
  String image;
  static String dishImage = "assets/main_screen/dish.png";
  static String background = "assets/menu/detail_background.png";

  DetailItemTile({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(background),
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          right: 0,
          bottom: 0,
          child: Image.asset(
            dishImage,
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          right: 0,
          bottom: 0,
          child: Image.asset(image),
        )
      ],
    );
  }
}
