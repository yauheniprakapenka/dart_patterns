import 'factories/new_york_pizza_factory.dart';
import 'store/chicago_pizza_store.dart';

/// Простая Фабрика не является паттерном проектирования.
/// это идиома программирования.
void main() {
  final pizzaFactory = NewYorkPizzaFactory();
  final pizzaStore = ChicagoPizzaStore(pizzaFactory)
    ..orderPizza('pepperoni');
  print(pizzaStore);
}
