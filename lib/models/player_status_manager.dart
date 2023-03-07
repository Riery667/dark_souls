import 'package:dark_souls/models/player.dart';
import 'package:flutter/material.dart';

class PlayerStatusManager extends ChangeNotifier {
  late Player player;
  static const initialHP = 403.0;
  static const vigorIncreseHP = 20;
  static const initialCountForVigor = 20;

  PlayerStatusManager() {
    _init();
  }

  void _init() async {
    player = Player(
      name: 'sr. Jhon',
      level: 48,
      vigor: 17,
      attunement: 10,
      endurence: 16,
      vitality: 20,
      strength: 24,
      dexterity: 21,
      inteligence: 10,
      faith: 9,
      luck: 10,
      maxHealth: initialHP,
      maxStamina: 50,
      maxMana: 43,
      currentHealth: 30,
      currentStamina: 20,
      currentMana: 40,
      souls: 5023,
    );

    player.maxHealth += player.vigor * (vigorIncreseHP - initialCountForVigor);
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

  //increase souls
  void soulsAcquired() {
    const soulsAcquired = 1550;
    player.souls += soulsAcquired;
    notifyListeners();
  }

  //simulate if player dies he loses all the souls
  void diePunishment() {
    player.souls = 0;
    notifyListeners();
  }
}
