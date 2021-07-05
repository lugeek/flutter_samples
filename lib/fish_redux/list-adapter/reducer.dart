import 'package:fish_redux/fish_redux.dart';

import 'item/state.dart';
import 'action.dart';
import 'state.dart';

Reducer<ListAdapterState> buildReducer() {
  return asReducer(
    <Object, Reducer<ListAdapterState>>{
      ListAdapterAction.initList: _onInitList,
      ListAdapterAction.action: _onAction,
    },
  );
}

ListAdapterState _onAction(ListAdapterState state, Action action) {
  final ListAdapterState newState = state.clone();
  return newState;
}

ListAdapterState _onInitList(ListAdapterState state, Action action) {
  final List<ListItemState> data = action.payload ?? <ListItemState>[];
  final ListAdapterState newState = state.clone();
  newState.items = data;
  return newState;
}