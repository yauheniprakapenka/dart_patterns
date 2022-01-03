import '../weapon/i_weapon.dart';

class Character {
  IWeapon weapon;

  Character({
    required this.weapon,
  });

  void fight() {
    weapon.useWeapon();
  }

  void setWeapon(IWeapon weapon) {
    this.weapon = weapon;
  }
}
