import 'beverages/espresso.dart';
import 'beverages/i_beverage.dart';
import 'condiments/mocha.dart';
import 'condiments/soy.dart';

void main() {
  final beverage = Espresso();
  cookCofee(beverage);
  final mocha = Mocha(beverage);
  cookCofee(mocha);
  final soy = Soy(mocha);
  cookCofee(soy);
}

void cookCofee(IBeverage beverage) {
  final description = beverage.getDescription();
  final cost = beverage.getCost();
  print('$description: \$$cost');
}
