import 'characters/king.dart';
import 'weapon/sword.dart';

void main() {
  final character = King()
    ..fight() // Удар топором
    ..setWeapon(Sword())
    ..fight(); // Удар мечом
  print(character.toString());
}
