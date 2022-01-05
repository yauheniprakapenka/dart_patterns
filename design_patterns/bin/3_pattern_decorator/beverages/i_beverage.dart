import 'beverage_size.dart';

abstract class IBeverage {
  var description = 'no description';
  var size = BeverageSize.tall;

  String getDescription() {
    return description;
  }

  double getCost();
}
