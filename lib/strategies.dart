import './animal.dart';

/// СТРАТЕГИЯ

/// Интерфейс стратегии поведения
abstract class BehaviorStrategy {
  void execute(Animal animal);
}

/// Стратегия охоты
class HuntStrategy implements BehaviorStrategy {
  @override
  void execute(Animal animal) {
    print('${animal.name} охотится...');
  }
}

/// Стратегия поиска растений
class ForageStrategy implements BehaviorStrategy {
  @override
  void execute(Animal animal) {
    print('${animal.name} ищет растения...');
  }
}

/// Стратегия миграции
class MigrateStrategy implements BehaviorStrategy {
  @override
  void execute(Animal animal) {
    print('${animal.name} мигрирует...');
  }
}
