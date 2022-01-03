import '../behaviors/fly/fly_no_way.dart';
import '../behaviors/quack/quack.dart';
import 'duck.dart';

class ToyDuck extends Duck {
  ToyDuck()
      : super(
          flyBehavior: FlyNoWay(),
          quackBehavior: Quack(),
        );
}
