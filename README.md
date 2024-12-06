# Ecosystem Simulation / Симуляция Экосистемы

This Dart project simulates an ecosystem where various animal species interact with each other and the environment. The simulation supports behaviors such as hunting, foraging, and migrating, as well as lifecycle events like birth and death. The system is built using several design patterns to manage complexity and facilitate extensibility.

Этот проект на Dart симулирует экосистему, в которой различные виды животных взаимодействуют друг с другом и окружающей средой. Симуляция поддерживает такие виды поведения, как охота, поиск пищи и миграция, а также события жизненного цикла, такие как рождение и смерть. Система построена с использованием нескольких шаблонов проектирования для управления сложностью и облегчения расширяемости.

## Features / Особенности

- **Observer Pattern / Шаблон Наблюдатель**: Observers can register to receive updates about changes in the ecosystem, such as the addition or removal of animals.
  
  Наблюдатели могут регистрироваться для получения обновлений об изменениях в экосистеме, таких как добавление или удаление животных.

- **Strategy Pattern / Шаблон Стратегия**: Animals can change their behavior dynamically, choosing from strategies like hunting, foraging, and migrating.
  
  Животные могут динамически изменять свое поведение, выбирая из стратегий, таких как охота, поиск пищи и миграция.

- **State Pattern / Шаблон Состояние**: Animals have different states (e.g., Hungry, Satiated) that influence their behavior.
  
  Животные имеют различные состояния (например, голод, сытость), которые влияют на их поведение.

- **Factory Method Pattern / Шаблон Фабричный Метод**: Easily create new animals using a factory method based on type.
  
  Легко создавайте новых животных, используя фабричный метод на основе типа.

- **Command Pattern / Шаблон Команда**: Encapsulate requests as objects, allowing for parameterization of actions like hunting or migrating.
  
  Инкапсулируйте запросы в виде объектов, позволяя параметризовать действия, такие как охота или миграция.

- **Composite Pattern / Шаблон Компоновщик**: Group animals into units (e.g., herds) that can act together.
  
  Объединяйте животных в группы (например, стада), которые могут действовать вместе.

- **Template Method Pattern / Шаблон Шаблонный Метод**: Define the lifecycle of animals with a common structure, allowing specific behaviors to be overridden.
  
  Определите жизненный цикл животных с общей структурой, позволяя переопределять конкретные поведения.

- **Iterator Pattern / Шаблон Итератор**: Traverse animals in the ecosystem with a unified interface.
  
  Обходите животных в экосистеме с помощью унифицированного интерфейса.

## Getting Started / Начало работы

### Prerequisites / Требования

- Ensure you have Dart installed on your machine. You can download it from the [official Dart website](https://dart.dev/get-dart).
  
  Убедитесь, что у вас установлен Dart. Вы можете скачать его с [официального сайта Dart](https://dart.dev/get-dart).

### Installation / Установка

1. Clone this repository to your local machine:
   
   Клонируйте этот репозиторий на ваш локальный компьютер:

   ```bash
   git clone <repository-url>