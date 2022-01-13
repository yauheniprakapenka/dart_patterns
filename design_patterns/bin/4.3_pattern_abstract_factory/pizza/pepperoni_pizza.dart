import '../ingredients/dough.dart';
import '../ingredients/souce.dart';
import '../interfaces/i_pizza.dart';
import '../interfaces/i_pizza_ingredient_factory.dart';

class PepperoniPizza extends IPizza {
  @override
  late final String name;
  @override
  late final Sauce sauce;
  @override
  late final Dough dough;
  final IPizzaIngredientFactory ingredientFactory;

  PepperoniPizza(this.ingredientFactory) {
    name = 'Pepperoni';
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
