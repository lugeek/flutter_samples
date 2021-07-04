import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<CounterState> buildEffect() {
  return combineEffects(<Object, Effect<CounterState>>{
    CounterAction.onAdd: _onAdd,
  });
}

void _onAdd(Action action, Context<CounterState> ctx) {
  ctx.dispatch(CounterActionCreator.add());
}
