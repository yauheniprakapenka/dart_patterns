import 'behaviors/fly/fly_no_way.dart';
import 'ducks/redhead_duck.dart';

void main() {
  final duck = RedheadDuck()
    ..performFly() // умею летать
    ..setFlyBehavior(FlyNoWay())
    ..performFly(); // не умею летать
  print(duck);
}
