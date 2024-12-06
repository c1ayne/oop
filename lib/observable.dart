import './observer.dart';

// ОБСЕРВЕР

// Интерфейс наблюдаемого объекта
abstract class Observable {
  final List<Observer> _observers = [];

  void addObserver(Observer observer) {
    _observers.add(observer);
  }

  void removeObserver(Observer observer) {
    _observers.remove(observer);
  }

  void notifyObservers(String event) {
    for (var observer in _observers) {
      observer.update(event);
    }
  }
}
