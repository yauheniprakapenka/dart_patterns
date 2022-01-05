import '../../interfaces/i_pizza.dart';

class PepperoniPizzaChicagoStyle extends IPizza {
  PepperoniPizzaChicagoStyle() {
    name = 'NY Style ${PizzaName.cheese.name}';
    toppings.add('два зубчика чеснока');
  }
}
