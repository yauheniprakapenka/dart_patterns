abstract class FlyBehavior {
  void fly();
}

class Fly implements FlyBehavior {
  @override
  void fly() {
    print('Взлететь');
  }
}

class FlyElegantly implements FlyBehavior {
  @override
  void fly() {
    print('Взлететь элегантно');
  }
}

class NoFly implements FlyBehavior {
  @override
  void fly() {
    print('Нет способности летать');
  }
}

abstract class SuperPowerBehavior {
  void useSuperPower();
}

class ThermaVision implements SuperPowerBehavior {
  @override
  void useSuperPower() {
    print('Использовать тепловое зрение');
  }
}

class WebShot implements SuperPowerBehavior {
  @override
  void useSuperPower() {
    print('Выстрел паутиной');
  }
}

class NoSuperPower implements SuperPowerBehavior {
  @override
  void useSuperPower() {
    print('Нет суперсилы');
  }
}

class SuperHero {
  final String _logo;
  final FlyBehavior _flyBehavior;
  final SuperPowerBehavior _superPowerBehavior;

  SuperHero({
    required String logo,
    required FlyBehavior flyBehavior,
    required SuperPowerBehavior superPowerBehavior,
  })  : _flyBehavior = flyBehavior,
        _superPowerBehavior = superPowerBehavior,
        _logo = logo;

  void performFly() {
    _flyBehavior.fly();
  }

  void performSuperPower() {
    _superPowerBehavior.useSuperPower();
  }

  void displayLogo() {
    print(_logo);
  }
}

class SpiderMan extends SuperHero {
  SpiderMan()
      : super(
          logo: '🕷',
          flyBehavior: NoFly(),
          superPowerBehavior: WebShot(),
        );
}

class SuperWoman extends SuperHero {
  SuperWoman()
      : super(
          logo: '👩',
          flyBehavior: Fly(),
          superPowerBehavior: ThermaVision(),
        );
}

class SuperMan extends SuperHero {
  SuperMan()
      : super(
          logo: '🦹🏼‍♂️',
          flyBehavior: FlyElegantly(),
          superPowerBehavior: ThermaVision(),
        );
}

class Pipec extends SuperHero {
  Pipec()
      : super(
          logo: '🦸🏼‍♂️',
          flyBehavior: NoFly(),
          superPowerBehavior: NoSuperPower(),
        );
}

void main() {
  SuperHero spiderMan = SpiderMan();
  spiderMan.performFly(); // Нет способности летать
  spiderMan.performSuperPower(); // Выстрел паутиной
  spiderMan.displayLogo(); // 🕷

  SuperHero superWoman = SuperWoman();
  superWoman.performFly(); // Взлететь
  superWoman.performSuperPower(); // Использовать тепловое зрение
  superWoman.displayLogo(); // 👩

  SuperHero pipec = Pipec();
  pipec.performFly(); // Нет способности летать
  pipec.performSuperPower(); // Нет суперсилы
  pipec.displayLogo(); // 🦸🏼‍♂️
}
