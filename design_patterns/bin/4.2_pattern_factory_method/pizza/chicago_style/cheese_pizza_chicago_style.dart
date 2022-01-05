import '../../interfaces/i_pizza.dart';

class CheesePizzaChicagoStyle extends IPizza {
  CheesePizzaChicagoStyle() {
    name = 'Chicago Style ${PizzaName.cheese.name}';
  }

  @override
  void bake() {
    print('Bake for 9 minutes at 450');
  }
}
