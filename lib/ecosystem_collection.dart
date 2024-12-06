import './animal.dart';
import './ecosystem_iterator.dart';

/// ИТЕРАТОР

/// Коллекция экосистемы
class EcosystemCollection {
  final List<Animal> _animals = [];

  void addAnimal(Animal animal) {
    _animals.add(animal);
  }

  Iterator<Animal> createIterator() {
    return EcosystemIterator(_animals);
  }
}
