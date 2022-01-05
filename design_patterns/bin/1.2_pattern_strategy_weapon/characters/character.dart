import '../weapon/i_weapon.dart';

class Character {
  late IWeapon _weapon;

  Character({required IWeapon weapon}) {
    _weapon = weapon;
  }

  void fight() {
    _weapon.useWeapon();
  }

  void setWeapon(IWeapon weapon) {
    _weapon = weapon;
  }

  @override
  String toString() => 'Character(_weapon: $_weapon)';
}
