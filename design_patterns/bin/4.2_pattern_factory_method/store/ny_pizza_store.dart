import '../interfaces/i_pizza.dart';
import '../interfaces/i_pizza_store.dart';
import '../pizza/ny_style/cheese_pizza_ny_style.dart';
import '../pizza/ny_style/pepperoni_pizza_ny_style.dart';

class NYPizzaStore extends IPizzaStore {
  @override
  IPizza createPizzaFactory(PizzaName pizzaName) {
    switch (pizzaName) {
      case PizzaName.pepperoni:
        return PepperoniPizzaNYStyle();
      case PizzaName.cheese:
        return CheesePizzaNYStyle();
    }
  }
}
