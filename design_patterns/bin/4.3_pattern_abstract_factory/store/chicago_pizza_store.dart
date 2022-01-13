import '../ingredient_factories/chicago_pizza_ingredient_factory.dart';
import '../interfaces/i_pizza.dart';
import '../interfaces/i_pizza_store.dart';
import '../pizza/cheeze_pizza.dart';
import '../pizza/pepperoni_pizza.dart';

class ChicagoPizzaStore extends IPizzaStore {
  @override
  IPizza createPizzaFactory(PizzaName pizzaName) {
    final ingredientFactory = ChicagoPizzaIngredientFactory();
    late final IPizza pizza;

    switch (pizzaName) {
      case PizzaName.pepperoni:
        pizza = PepperoniPizza(ingredientFactory);
        break;
      case PizzaName.cheese:
        pizza = CheesePizza(ingredientFactory);
        break;
    }

    return pizza;
  }
}
