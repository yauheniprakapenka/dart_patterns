import 'characters/king.dart';
import 'weapon/sword.dart';

void main() {
  final character = King();
  character.fight(); // Удар топором
  character.setWeapon(Sword());
  character.fight(); // Удар мечом
}