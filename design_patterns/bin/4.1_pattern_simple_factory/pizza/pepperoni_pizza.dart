import '../interfaces/i_pizza.dart';

class PepperoniPizza implements IPizza {
  @override
  void box() {
    print('Упаковать пиццу');
  }

  @override
  void prepare() {
    print('Приготовить пиццу');
  }
}
