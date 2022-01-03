import '../behaviors/fly/i_fly_behavior.dart';
import '../behaviors/quack/i_quack_behavior.dart';

class Duck {
  IQuackBehavior quackBehavior;
  IFlyBehavior flyBehavior;

  Duck({
    required this.quackBehavior,
    required this.flyBehavior,
  });

  void swim() {
    print('Утка плывет');
  }

  void display() {
    print('Утка отобразилась');
  }

  void performQuack() {
    quackBehavior.quack();
  }

  void performFly() {
    flyBehavior.fly();
  }

  void setFlyBehavior(IFlyBehavior fb) {
    flyBehavior = fb;
  }
}
