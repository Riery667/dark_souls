import 'package:dark_souls/components/icon_text_item.dart';
import 'package:dark_souls/icons_assets.dart';
import 'package:dark_souls/models/models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InventoryStatusView extends StatelessWidget {
  static String dishImage = "assets/main_screen/dish.png";
  static String background = "assets/menu/inventory_background.png";
  static String labelLine = "assets/menu/menu_line.png";
  const InventoryStatusView({super.key});

  @override
  Widget build(BuildContext context) {
    final playerStatusManager =
        Provider.of<PlayerStatusManager>(context, listen: false);
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
          padding: const EdgeInsets.all(16),
          child: Expanded(
            child: Column(
              children: [
                Column(
                  children: const [
                    Text(
                      "Player Status",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                IconTextItem(
                    image: IconsAssets.level,
                    text: "Level ${playerStatusManager.player.level}"),
                const SizedBox(
                  height: 30,
                ),
                IconTextItem(
                    image: IconsAssets.vigor,
                    text: "Vigor ${playerStatusManager.player.vigor}"),
                IconTextItem(
                    image: IconsAssets.attunement,
                    text:
                        "Attunement ${playerStatusManager.player.attunement}"),
                IconTextItem(
                    image: IconsAssets.endurance,
                    text: "Endurence ${playerStatusManager.player.endurence}"),
                IconTextItem(
                    image: IconsAssets.vitality,
                    text: "Vitality ${playerStatusManager.player.vitality}"),
                const SizedBox(
                  height: 30,
                ),
                IconTextItem(
                    image: IconsAssets.strength,
                    text: "Strength ${playerStatusManager.player.strength}"),
                IconTextItem(
                    image: IconsAssets.dexterity,
                    text: "Dexterity ${playerStatusManager.player.dexterity}"),
                IconTextItem(
                    image: IconsAssets.inteligence,
                    text:
                        "Inteligence ${playerStatusManager.player.inteligence}"),
                IconTextItem(
                    image: IconsAssets.faith,
                    text: "Faith ${playerStatusManager.player.faith}"),
                const SizedBox(
                  height: 30,
                ),
                IconTextItem(
                    image: IconsAssets.luck,
                    text: "Luck ${playerStatusManager.player.luck}"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
