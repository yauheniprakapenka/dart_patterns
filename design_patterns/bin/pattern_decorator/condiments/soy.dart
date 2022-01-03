import '../beverages/i_beverage.dart';
import 'i_condiment_decorator.dart';

class Soy extends ICondimentDecorator {
  final IBeverage _beverage;

  Soy(this._beverage) {
    description = _beverage.description + ', Soy';
    size = _beverage.size;
  }

  @override
  String getDescription() {
    return description;
  }

  @override
  double getCost() {
    final soyCost = _getBeverageSizeCost();
    return soyCost + _beverage.getCost();
  }

  double _getBeverageSizeCost() {
    switch (size) {
      case BeverageSize.tall:
        return 0.1;
      case BeverageSize.grande:
        return 0.5;
      case BeverageSize.venti:
        return 0.9;
    }
  }
}
