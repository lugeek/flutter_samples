import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<GridState> buildEffect() {
  return combineEffects(<Object, Effect<GridState>>{
    Lifecycle.initState: _init,
  });
}

void _init(Action action, Context<GridState> ctx) {
  ctx.dispatch(GridActionCreator.onLoadData());
}
