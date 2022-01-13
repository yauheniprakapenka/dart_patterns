import '../ingredients/dough.dart';
import '../ingredients/souce.dart';
import '../interfaces/i_pizza.dart';
import '../interfaces/i_pizza_ingredient_factory.dart';

class CheesePizza extends IPizza {
  late final String name;
  late final Sauce sauce;
  late final Dough dough;
  final IPizzaIngredientFactory ingredientFactory;

  CheesePizza(this.ingredientFactory) {
    name = 'Cheese pizza';
    dough = ingredientFactory.createDough();
    sauce = ingredientFactory.createSauce();
  }

  @override
  void prepare() {
    print('Preparing $name pizza');
    print('add sauce: ${sauce.name}');
    print('add dough: ${dough.name}');
  }
}
