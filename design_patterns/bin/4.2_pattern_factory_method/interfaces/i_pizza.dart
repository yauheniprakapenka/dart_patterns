enum PizzaName {
  pepperoni,
  cheese,
}

abstract class IPizza {
  var name = '';
  final toppings = <String>[];

  void prepare() {
    print('Preparing $name pizza');
    print('Tossing dough...');
    print('Adding sauce...');

    if (toppings.isNotEmpty) {
      print('Adding toppings:');
      toppings.forEach(print);
    }
  }

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
