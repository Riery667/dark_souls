class Player {
  String name;
  double maxHealth;
  double maxStamina;
  double maxMana;
  double currentHealth;
  double currentStamina;
  double currentMana;
  String pladge = 'standart';
  int souls;

  Player({
    required this.name,
    required this.maxHealth,
    required this.maxStamina,
    required this.maxMana,
    required this.currentHealth,
    required this.currentStamina,
    required this.currentMana,
    this.souls = 0,
  });
}
