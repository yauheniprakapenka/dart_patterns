import '../behaviors/fly/fly_with_wings.dart';
import '../behaviors/quack/quack.dart';
import 'duck.dart';

class RedheadDuck extends Duck {
  RedheadDuck()
      : super(
          quackBehavior: Quack(),
          flyBehavior: FlyWithWings(),
        );
}