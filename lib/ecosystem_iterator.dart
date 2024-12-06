import './animal.dart';

/// ИТЕРАТОР

/// Итератор для обхода объектов экосистемы
class EcosystemIterator implements Iterator<Animal> {
  final List<Animal> _animals;
  int _currentIndex = 0;

  EcosystemIterator(this._animals);

  @override
  bool moveNext() {
    if (_currentIndex < _animals.length) {
      _currentIndex++;
      return true;
    }
    return false;
  }

  @override
  Animal get current => _animals[_currentIndex - 1];
}
