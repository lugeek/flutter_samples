import 'package:fish_redux/fish_redux.dart';

enum CounterAction { add, onAdd }

class CounterActionCreator {
  static Action add() {
    return const Action(CounterAction.add);
  }

  static Action onAdd() {
    return const Action(CounterAction.onAdd);
  }
}
