import 'factories/new_york_pizza_factory.dart';
import 'store/burger_king_pizza_store.dart';

/// Строго говоря, Простая Фабрика не является паттерном проектирования.
/// Скорее, это идиома программирования. Эту идиому путают с паттерном Фабрика.

void main() {
  final pizzaFactory = NewYorkPizzaFactory();
  final pizzaStore = BurgerKingPizzaStore(pizzaFactory)
    ..orderPizza('pepperoni');
  print(pizzaStore);
}
