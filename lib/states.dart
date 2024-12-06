import './animal.dart';
import './strategies.dart';

// СОСТОЯНИЕ

/// Интерфейс состояния животного
abstract class AnimalState {
  void handle(Animal animal);
}

/// Состояние "голоден"
class HungryState implements AnimalState {
  @override
  void handle(Animal animal) {
    print('${animal.name} голоден и ищет еду.');
    animal.setBehavior(HuntStrategy());
  }
}

/// Состояние "сытость"
class SatiatedState implements AnimalState {
  @override
  void handle(Animal animal) {
    print('${animal.name} сыт и отдыхает.');
    animal.setBehavior(MigrateStrategy());
  }
}
