import 'package:fish_redux/fish_redux.dart';

import 'item/state.dart';

//TODO replace with your own action
enum ListAdapterAction { action, initList }

class ListAdapterActionCreator {
  static Action onAction() {
    return const Action(ListAdapterAction.action);
  }
  static Action initList(List<ListItemState> items) {
    return Action(ListAdapterAction.initList, payload: items);
  }
}
