import 'package:fish_redux/fish_redux.dart';

import 'item/state.dart';
import 'item/component.dart';
import 'state.dart';

class ListItemAdapter extends DynamicFlowAdapter<ListAdapterState> {
  ListItemAdapter()
      : super(
    pool: <String, Component<Object>>{'item_type': ListItemComponent()},
    connector: _ListConnector(),
  );
}

class _ListConnector extends ConnOp<ListAdapterState, List<ItemBean>> {
  @override
  List<ItemBean> get(ListAdapterState state) {
    //判断ListState里面的items数据是否为空
    if (state.items.isNotEmpty) {
      //若不为空，把item数据转化成ItemBean的列表
      return state.items
          .map<ItemBean>((listItemState) =>
          ItemBean('item_type', listItemState))
          .toList(growable: true);
    } else {
      //若为空，返回空列表
      return <ItemBean>[];
    }
  }

  @override
  void set(ListAdapterState state, List<ItemBean> items) {
    //把ItemBean的变化，修改到item的state的过程
    if (items.isNotEmpty) {
      Iterable<ListItemState> bean2State = items.map<ListItemState>((bean) =>
      bean.data as ListItemState);
      state.items = List.from(bean2State);
    } else {
      state.items = <ListItemState>[];
    }
  }

  @override
  SubReducer<ListAdapterState> subReducer(Reducer<List<ItemBean>> reducer) {
    // TODO: implement subReducer
    return super.subReducer(reducer);
  }
}
