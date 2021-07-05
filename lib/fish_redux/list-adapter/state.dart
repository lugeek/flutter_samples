import 'package:fish_redux/fish_redux.dart';

import 'item/state.dart';

class ListAdapterState implements Cloneable<ListAdapterState> {
  List<ListItemState> items = [];

  @override
  ListAdapterState clone() {
    return ListAdapterState()..items = items;
  }
}

ListAdapterState initState(Map<String, dynamic> args) {
  return ListAdapterState();
}
