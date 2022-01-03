import '../beverages/i_beverage.dart';
import 'i_condiment_decorator.dart';

class Mocha extends ICondimentDecorator {
  final IBeverage _beverage;

  Mocha(this._beverage) {
    description = _beverage.description + ', Mocha';
  }

  @override
  String getDescription() {
    return description;
  }

  @override
  double getCost() {
    const mochaCost = 0.2;
    return mochaCost + _beverage.getCost();
  }
}
