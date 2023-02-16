import 'package:dark_souls/models/player.dart';
import 'package:flutter/material.dart';

class PlayerStatusManager extends ChangeNotifier {
  late Player player;

  PlayerStatusManager() {
    _init();
  }

  void _init() async {
    player = Player(
        name: 'sr. Jhon',
        maxHealth: 58,
        maxStamina: 50,
        maxMana: 43,
        currentHealth: 35,
        currentStamina: 20,
        currentMana: 40);
  }

  //decrease the current health of player
  void damageHP() {
    const damage = 10;
    if (player.currentHealth < damage) {
      player.currentHealth = 0;
    } else {
      player.currentHealth -= damage;
    }

    notifyListeners();
  }

  //increase the current health of player
  void increaseHP() {
    const heal = 2;
    if (heal + player.currentHealth > player.maxHealth) {
      player.currentHealth = player.maxHealth;
    } else {
      player.currentHealth += heal;
    }

    notifyListeners();
  }
}
