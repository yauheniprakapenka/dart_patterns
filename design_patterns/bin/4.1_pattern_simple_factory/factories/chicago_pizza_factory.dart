import '../interfaces/i_pizza.dart';
import '../interfaces/i_pizza_factory.dart';

// Этой пиццерии нужна фабрика для изготовления пиццы в чикагском стиле: 
// толстая основа, густой соус и много сыра.
class ChicagoPizzaFactory implements IPizzaFactory {
  @override
  IPizza createPizza(String type) {
    throw UnimplementedError();
  }
}
