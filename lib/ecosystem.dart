import './observable.dart';
import './animal.dart';

// Экосистема как наблюдаемый объект
class Ecosystem extends Observable {
  final List<Animal> animals = [];

  void addAnimal(Animal animal) {
    animals.add(animal);
    notifyObservers('Животное добавлено: ${animal.name}');
  }

  void removeAnimal(Animal animal) {
    animals.remove(animal);
    notifyObservers('Животное удалено (умерло): ${animal.name}');
  }

  void simulate() {
    for (var animal in animals) {
      animal.act();
    }
  }
}
