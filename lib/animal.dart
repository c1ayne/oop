import './strategies.dart';
import './states.dart';

/// Базовый класс животного
class Animal {
  final String name;
  BehaviorStrategy _behavior;
  AnimalState _state;

  Animal(this.name, this._behavior, this._state);

  void setBehavior(BehaviorStrategy behavior) {
    _behavior = behavior;
  }

  void setState(AnimalState state) {
    _state = state;
  }

  void act() {
    _state.handle(this);
    _behavior.execute(this);
  }
}
