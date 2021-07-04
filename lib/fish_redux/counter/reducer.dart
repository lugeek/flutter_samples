import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CounterState> buildReducer() {
  return asReducer(
    <Object, Reducer<CounterState>>{
      CounterAction.add: _add,
    },
  );
}

CounterState _add(CounterState state, Action action) {
  final CounterState newState = state.clone();
  newState.count = state.count + 1;
  return newState;
}
