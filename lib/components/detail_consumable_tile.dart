// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:dark_souls/models/models.dart';

class DetailConsumableTile extends StatelessWidget {
  Consumable item;
  static String dishImage = "assets/main_screen/dish.png";
  static String background = "assets/menu/detail_background.png";
  static String labelLine = "assets/menu/menu_line.png";

  DetailConsumableTile({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double squareItemImageSize = 200;
    return LayoutBuilder(
      builder: (context, BoxConstraints bc) {
        return Stack(
          children: [
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(background),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              item.name,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                        Align(
                          alignment: const Alignment(-1, 0),
                          child: Container(
                            height: 7,
                            width: 300,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  labelLine,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Center(
                      child: SizedBox(
                        height: squareItemImageSize,
                        width: squareItemImageSize,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset(
                                dishImage,
                              ),
                            ),
                            Image.asset(
                              item.image,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                      child: Text(
                        item.description,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
