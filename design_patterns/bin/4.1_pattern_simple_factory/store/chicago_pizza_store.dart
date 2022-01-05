import '../interfaces/i_pizza.dart';
import '../interfaces/i_pizza_factory.dart';
import '../interfaces/i_pizza_store.dart';

class ChicagoPizzaStore implements IPizzaStore {
  final IPizzaFactory pizzaFactory;

  ChicagoPizzaStore(this.pizzaFactory);

  @override
  IPizza orderPizza(String type) {
    final pizza = pizzaFactory.createPizza(type);
    return pizza;
  }
}
