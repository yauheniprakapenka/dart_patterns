import 'i_fly_behavior.dart';

class FlyNoWay implements IFlyBehavior {
  @override
  void fly() {
    print('не имею летать');
  }
}
