import 'i_beverage.dart';

class Espresso extends IBeverage {
  Espresso() {
    description = 'Espresso';
  }

  @override
  double getCost() {
    return 1.99;
  }
}
