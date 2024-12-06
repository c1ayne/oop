import './animal.dart';
import './strategies.dart';
import './states.dart';

/// КОМПОНОВЩИК

/// Композит для групп животных
class AnimalGroup extends Animal {
  final List<Animal> _animals = [];

  AnimalGroup(String name) : super(name, MigrateStrategy(), HungryState());

  void addAnimal(Animal animal) {
    _animals.add(animal);
  }

  void removeAnimal(Animal animal) {
    _animals.remove(animal);
  }

  @override
  void act() {
    print('Группа $name действует как единое целое...');
    for (var animal in _animals) {
      animal.act();
    }
  }
}
