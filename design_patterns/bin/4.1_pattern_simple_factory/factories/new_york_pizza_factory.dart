import '../interfaces/i_pizza.dart';
import '../interfaces/i_pizza_factory.dart';
import '../pizza/cheese_pizza.dart';
import '../pizza/pepperoni_pizza.dart';

// Этой пиццерии нужна фабрика для изготовления пиццы в нью-йоркском стиле: 
// тонкая основа, изысканный соус и небольшое количество сыра.
class NewYorkPizzaFactory implements IPizzaFactory {
  @override
  IPizza createPizza(String type) {
    late final IPizza pizza;

    if (type.contains('cheese')) {
      pizza = CheesePizza();
    } else if (type.contains('pepperoni')) {
      pizza = PepperoniPizza();
    }

    pizza
      ..prepare()
      ..box();

    return pizza;
  }
}
