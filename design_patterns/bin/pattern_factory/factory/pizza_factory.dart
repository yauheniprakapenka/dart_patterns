import '../../pattern_simple_factory/interfaces/i_pizza.dart';
import '../../pattern_simple_factory/pizza/cheese_pizza.dart';
import '../../pattern_simple_factory/pizza/pepperoni_pizza.dart';

class PizzaFactory {
  IPizza createPizze(String type) {
    late final IPizza pizza;

    if (type.contains('cheese')) {
      pizza = CheesePizza();
    } else if (type.contains('pepperoni')) {
      pizza = PepperoniPizza();
    }

    return pizza;
  }
}
