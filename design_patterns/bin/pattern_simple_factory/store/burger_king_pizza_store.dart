import '../interfaces/i_pizza.dart';
import '../interfaces/i_pizza_factory.dart';
import '../interfaces/i_pizza_store.dart';

class BurgerKingPizzaStore implements IPizzaStore {
  final IPizzaFactory pizzaFactory;

  BurgerKingPizzaStore(this.pizzaFactory);

  @override
  IPizza orderPizza(String type) {
    final pizza = pizzaFactory.createPizza(type);

    return pizza;
  }
}
