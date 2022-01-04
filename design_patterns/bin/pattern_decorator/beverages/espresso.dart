import 'i_beverage.dart';

class Espresso extends IBeverage {
  Espresso() {
    description = 'Espresso';
  }

  @override
  double getCost() {
    const espressoCost = 1.99;
    return espressoCost;
  }
}
