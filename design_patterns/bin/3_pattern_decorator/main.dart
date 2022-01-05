import 'beverages/beverage_size.dart';
import 'beverages/espresso.dart';
import 'beverages/i_beverage.dart';
import 'condiments/mocha.dart';
import 'condiments/soy.dart';

void main() {
  final beverage = Espresso()..size = BeverageSize.venti;
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
