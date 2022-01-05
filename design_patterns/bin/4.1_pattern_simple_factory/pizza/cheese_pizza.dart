import '../interfaces/i_pizza.dart';

class CheesePizza implements IPizza {
  @override
  void box() {
    print('Упаковать пиццу');
  }

  @override
  void prepare() {
    print('Приготовить пиццу');
  }
}
