import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  String categoryimage;
  CategoryTile({super.key, required this.categoryimage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/items/category/category_background.png",
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
            child: Image.asset(
              categoryimage,
            ),
          ),
        ],
      ),
    );
  }
}
