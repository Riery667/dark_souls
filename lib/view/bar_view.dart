import 'package:dark_souls/components/components.dart';
import 'package:dark_souls/models/models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BarView extends StatelessWidget {
  const BarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PlayerStatusManager>(
      builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
          child: SizedBox(
            width: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Health Bar
                StatusBar(
                  asset: 'assets/status_hud/health_bar.png',
                  maxStatusBar: value.player.maxHealth,
                  currentStatusBar: value.player.currentHealth,
                ),
                StatusBar(
                  asset: 'assets/status_hud/stamina_bar.png',
                  maxStatusBar: value.player.maxStamina,
                  currentStatusBar: value.player.currentStamina,
                ),
                StatusBar(
                  asset: 'assets/status_hud/mana_bar.png',
                  maxStatusBar: value.player.maxMana,
                  currentStatusBar: value.player.currentMana,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
