import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<GridState> buildReducer() {
  return asReducer(
    <Object, Reducer<GridState>>{
      GridAction.loadData: _onLoadData,
    },
  );
}

GridState _onAction(GridState state, Action action) {
  final GridState newState = state.clone();
  return newState;
}

GridState _onLoadData(GridState state, Action action) {
  final GridState newState = state.clone()
    ..list = [
      '-0-',
      '-1-',
      '-2-',
      '-3-',
      '-4-',
      '-5-',
      '-6-',
      '-7-',
      '-8-',
      '-9-'
    ];
  return newState;
}
