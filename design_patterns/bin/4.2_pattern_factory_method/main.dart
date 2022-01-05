import 'interfaces/i_pizza.dart';
import 'store/chicago_pizza_store.dart';
import 'store/ny_pizza_store.dart';

void main() {
  print('----- Order 1 -----');
  final nyPizzaStore = NYPizzaStore();
  nyPizzaStore.orderPizza(PizzaName.cheese);

  print('----- Order 2 -----');
  final chicagoPizzaStore = ChicagoPizzaStore();
  chicagoPizzaStore.orderPizza(PizzaName.cheese);
}
