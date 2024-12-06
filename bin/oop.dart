import './index.dart';

void main() {
  // Создаем экосистему и логгер
  var ecosystem = Ecosystem();
  var logger = Logger();
  ecosystem.addObserver(logger);

  // Создаем животных через фабрику
  var predator = AnimalFactory.createAnimal('Predator');
  var herbivore = AnimalFactory.createAnimal('Herbivore');

  // Добавляем животных в экосистему
  ecosystem.addAnimal(predator);
  ecosystem.addAnimal(herbivore);

  // Создаем группу животных (компоновщик)
  var herd = AnimalGroup('Herd');
  herd.addAnimal(herbivore);
  herd.addAnimal(AnimalFactory.createAnimal('Herbivore'));
  ecosystem.addAnimal(herd);

  // Симулируем действия экосистемы
  print('\n--- Симуляция началась ---');
  ecosystem.simulate();

  // Удаляем животное (например, смерть животного)
  ecosystem.removeAnimal(predator);

  print('\n--- Использование команды ---');
  var huntCommand = HuntCommand(herbivore);
  huntCommand.execute();

  var migrateCommand = MigrateCommand(herd);
  migrateCommand.execute();

  print('\n--- Использование шаблона ---');
  var predatorLifecycle = PredatorLifecycle();
  predatorLifecycle.liveDay();

  var herbivoreLifecycle = HerbivoreLifecycle();
  herbivoreLifecycle.liveDay();

  print('\n--- Использование итератора ---');
  var collection = EcosystemCollection();
  collection.addAnimal(predator);
  collection.addAnimal(herbivore);

  var iterator = collection.createIterator();
  while (iterator.moveNext()) {
    print('Итерация животных: ${iterator.current.name}');
  }

  print('\n--- Симуляция закончилась ---');
}
