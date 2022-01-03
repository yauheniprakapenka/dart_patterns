import '../beverages/i_beverage.dart';
import 'i_condiment_decorator.dart';

class Soy extends ICondimentDecorator {
  final IBeverage _beverage;

  Soy(this._beverage) {
    description = _beverage.description + ', Soy';
  }

  @override
  String getDescription() {
    return description;
  }

  @override
  double getCost() {
    const soyCost = .15;
    return soyCost + _beverage.getCost();
  }
}
