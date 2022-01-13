import '../ingredients/dough.dart';
import '../ingredients/souce.dart';
import '../interfaces/i_pizza_ingredient_factory.dart';

class ChicagoPizzaIngredientFactory implements IPizzaIngredientFactory {
  @override
  Dough createDough() {
    return Dough('Chicago dough');
  }

  @override
  Sauce createSauce() {
    return Sauce('Chicago Sauce');
  }
}
