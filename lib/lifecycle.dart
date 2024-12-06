// ШАБЛОННЫЙ МЕТОД

/// Базовый класс жизненного цикла животного
abstract class AnimalLifecycle {
  void liveDay() {
    wakeUp();
    findFood();
    eat();
    rest();
  }

  void wakeUp() {
    print('Животное проснулось.');
  }

  void findFood();

  void eat() {
    print('Животное ест еду.');
  }

  void rest() {
    print('Животное идет спать.');
  }
}

/// Жизненный цикл хищника
class PredatorLifecycle extends AnimalLifecycle {
  @override
  void findFood() {
    print('Хищник охотится за добычей.');
  }
}

/// Жизненный цикл травоядного
class HerbivoreLifecycle extends AnimalLifecycle {
  @override
  void findFood() {
    print('Травоядное животное ищет растения.');
  }
}
