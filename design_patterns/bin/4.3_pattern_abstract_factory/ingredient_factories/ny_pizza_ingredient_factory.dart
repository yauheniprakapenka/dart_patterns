import '../ingredients/dough.dart';
import '../ingredients/souce.dart';
import '../interfaces/i_pizza_ingredient_factory.dart';

class NYPizzaIngredientFactory implements IPizzaIngredientFactory {
  @override
  Dough createDough() {
    return Dough('NY dough');
  }

  @override
  Sauce createSauce() {
    return Sauce('NY Sauce');
  }
}
