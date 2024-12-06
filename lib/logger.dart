import './observer.dart';

/// ИТЕРАТОР

/// Логирование событий (наблюдатель)
class Logger implements Observer {
  @override
  void update(String event) {
    print('[Logger]: $event');
  }
}
