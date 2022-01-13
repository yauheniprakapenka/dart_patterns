import 'interfaces/i_pizza.dart';
import 'interfaces/i_pizza_store.dart';
import 'store/ny_pizza_store.dart';

void main() {
  final IPizzaStore nyPizzaStore = NYPizzaStore();
  nyPizzaStore.orderPizza(PizzaName.pepperoni);
}
