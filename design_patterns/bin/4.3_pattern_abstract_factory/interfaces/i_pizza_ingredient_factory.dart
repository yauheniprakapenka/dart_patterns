import '../ingredients/dough.dart';
import '../ingredients/souce.dart';

abstract class IPizzaIngredientFactory {
  Dough createDough();
  Sauce createSauce();
}
