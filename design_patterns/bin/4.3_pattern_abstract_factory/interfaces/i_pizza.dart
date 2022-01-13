import '../ingredients/dough.dart';
import '../ingredients/souce.dart';

enum PizzaName {
  pepperoni,
  cheese,
}

abstract class IPizza {
  String get name;
  Dough get dough;
  Sauce get sauce;

  final toppings = <String>[];

  void prepare();

  void bake() {
    print('Bake for 25 minutes at 350 C');
  }

  void cut() {
    print('Cutting the pizza into diagonal slices');
  }

  void box() {
    print('Place pizza in official PizzaStore box');
  }
}
