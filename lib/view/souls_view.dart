import 'package:dark_souls/models/models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SoulsView extends StatelessWidget {
  const SoulsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PlayerStatusManager>(
      builder: (context, value, child) {
        return Material(
          color: Colors.transparent,
          child: Center(
            child: Stack(
              children: [
                const Positioned.fill(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/main_screen/souls_prop_bar.png',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/main_screen/souls_icon.png',
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Text(
                          value.player.souls.toString(),
                          style: const TextStyle(
                              fontSize: 15, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
