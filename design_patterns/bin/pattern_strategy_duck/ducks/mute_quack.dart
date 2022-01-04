import '../behaviors/quack/i_quack_behavior.dart';

class MuteQuack implements IQuackBehavior {
  @override
  void quack() {
    print('Нет реализации');
  }
}
