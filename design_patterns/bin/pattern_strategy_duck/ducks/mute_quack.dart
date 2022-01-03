import '../behaviors/quack/i_quack_behavior.dart';

class MuteQauck implements IQuackBehavior {
  @override
  void quack() {
    print('Нет реализации');
  }
}