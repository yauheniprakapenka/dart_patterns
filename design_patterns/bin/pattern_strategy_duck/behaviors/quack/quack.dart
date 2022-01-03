import 'i_quack_behavior.dart';

class Quack implements IQuackBehavior {
  @override
  void quack() {
    print('Кряканье');
  }
}
