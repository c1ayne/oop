import './animal.dart';
import './strategies.dart';

/// КОМАНДА

/// Интерфейс команды
abstract class Command {
  void execute();
}

/// Команда охоты
class HuntCommand implements Command {
  final Animal animal;

  HuntCommand(this.animal);

  @override
  void execute() {
    print('${animal.name} начал охоту...');
    animal.setBehavior(HuntStrategy());
    animal.act();
  }
}

/// Команда миграции
class MigrateCommand implements Command {
  final Animal animal;

  MigrateCommand(this.animal);

  @override
  void execute() {
    print('${animal.name} начал миграцию...');
    animal.setBehavior(MigrateStrategy());
    animal.act();
  }
}
