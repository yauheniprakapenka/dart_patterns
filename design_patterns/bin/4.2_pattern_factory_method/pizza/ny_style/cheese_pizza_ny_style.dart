import '../../interfaces/i_pizza.dart';

class CheesePizzaNYStyle extends IPizza {
  CheesePizzaNYStyle() {
    name = 'NY Style ${PizzaName.cheese.name}';
    toppings
      ..add('сыр Реджано')
      ..add('Сушеный базилик 2 ч.л.');
  }

  @override
  void cut() {
    print('Cutting the pizza into square slices');
  }
}
