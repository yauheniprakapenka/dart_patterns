import '../beverages/beverage_size.dart';
import '../beverages/i_beverage.dart';
import 'i_condiment_decorator.dart';

class Soy extends ICondimentDecorator {
  final IBeverage _beverage;

  Soy(this._beverage) {
    description = '${_beverage.description}, Soy';
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
        const tailCost = 0.1;
        return tailCost;
      case BeverageSize.grande:
        const grandeCost = 0.5;
        return grandeCost;
      case BeverageSize.venti:
        const ventiCost = 0.9;
        return ventiCost;
    }
  }
}
