import 'i_pizza.dart';

abstract class IPizzaStore {
  IPizza orderPizza(PizzaName pizzaType) {
    return createPizzaFactory(pizzaType)
      ..prepare()
      ..bake()
      ..cut()
      ..box();
  }

  // Фабричный метод, производящий продукт.
  // pattern: abstract Product factoryMethod(String type)
  IPizza createPizzaFactory(PizzaName pizzaName);
}
