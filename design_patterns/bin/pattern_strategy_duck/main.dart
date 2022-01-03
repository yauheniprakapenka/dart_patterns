import 'behaviors/fly/fly_no_way.dart';
import 'ducks/redhead_duck.dart';

void main() {
  final duck = RedheadDuck();
  duck.performFly(); // умею летать
  duck.setFlyBehavior(FlyNoWay());
  duck.performFly(); // не умею летать
}
