import '../interfaces/i_pizza.dart';
import '../interfaces/i_pizza_store.dart';
import '../pizza/chicago_style/cheese_pizza_chicago_style.dart';
import '../pizza/chicago_style/pepperoni_pizza_chicago_style.dart';

class ChicagoPizzaStore extends IPizzaStore {
  @override
  IPizza createPizzaFactory(PizzaName pizzaName) {
    switch (pizzaName) {
      case PizzaName.pepperoni:
        return PepperoniPizzaChicagoStyle();
      case PizzaName.cheese:
        return CheesePizzaChicagoStyle();
    }
  }
}
