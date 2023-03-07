// ignore_for_file: public_member_api_docs, sort_constructors_first
class Player {
  String name;
  int level;
  int vigor;
  int attunement;
  int endurence;
  int vitality;
  int strength;
  int dexterity;
  int inteligence;
  int faith;
  int luck;
  double maxHealth;
  double maxStamina;
  double maxMana;
  double currentHealth;
  double currentStamina;
  double currentMana;
  String pladge;
  int souls;

  Player({
    required this.name,
    required this.level,
    required this.vigor,
    required this.attunement,
    required this.endurence,
    required this.vitality,
    required this.strength,
    required this.dexterity,
    required this.inteligence,
    required this.faith,
    required this.luck,
    required this.maxHealth,
    required this.maxStamina,
    required this.maxMana,
    required this.currentHealth,
    required this.currentStamina,
    required this.currentMana,
    this.pladge = 'standart',
    this.souls = 0,
  });
}
