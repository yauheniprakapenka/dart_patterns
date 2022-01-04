import 'i_pizza.dart';

// Можно представить фабрики пиццы по стандартам, принятым в разных регионах: 
// Нью-Йорк, Чикаго, Калифорния

abstract class IPizzaFactory {
  IPizza createPizza(String type);
}
