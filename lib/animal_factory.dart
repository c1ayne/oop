import './strategies.dart';
import './states.dart';
import './animal.dart';

/// ФАБРИЧНЫЙ МЕТОД

/// Фабрика для создания животных
class AnimalFactory {
  static Animal createAnimal(String type) {
    switch (type) {
      case 'Predator':
        return Animal('Predator', HuntStrategy(), HungryState());
      case 'Herbivore':
        return Animal('Herbivore', ForageStrategy(), HungryState());
      default:
        throw Exception('Неизвестный тип');
    }
  }
}
