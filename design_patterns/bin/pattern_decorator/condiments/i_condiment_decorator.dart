import '../beverages/i_beverage.dart';

abstract class ICondimentDecorator extends IBeverage {
  @override
  String getDescription();
}
