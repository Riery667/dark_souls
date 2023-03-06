import 'package:dark_souls/components/icon_text_item.dart';
import 'package:dark_souls/icons_assets.dart';
import 'package:dark_souls/models/models.dart';
import 'package:flutter/material.dart';

class DetailShieldTile extends StatelessWidget {
  final Shield shield;
  static String dishImage = "assets/main_screen/dish.png";
  static String background = "assets/menu/inventory_background.png";
  static String line = "assets/menu/menu_line.png";
  const DetailShieldTile({super.key, required this.shield});

  @override
  Widget build(BuildContext context) {
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                flex: 7,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Text(
                                shield.name,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Image.asset(line)
                            ],
                          ),
                          IconTextItem(
                              image: IconsAssets.skill, text: shield.skill),
                          const SizedBox(
                            height: 15,
                          ),
                          IconTextItem(
                              image: IconsAssets.defense,
                              text: "Defense ${shield.defense.toString()}"),
                          IconTextItem(
                              image: IconsAssets.stability,
                              text:
                                  "Stability ${shield.estability.toString()}"),
                        ],
                      ),
                    ),
                    //Icon
                    Expanded(
                      child: Center(
                        child: SizedBox(
                          height: 200,
                          width: 200,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Image.asset(
                                  dishImage,
                                ),
                              ),
                              Image.asset(
                                shield.image,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                  child: Text(
                    shield.description,
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
