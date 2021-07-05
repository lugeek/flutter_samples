import 'package:fish_redux/fish_redux.dart';

import 'item/state.dart';
import 'action.dart';
import 'state.dart';

Effect<ListAdapterState> buildEffect() {
  return combineEffects(<Object, Effect<ListAdapterState>>{
    Lifecycle.initState: _initList,
    ListAdapterAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ListAdapterState> ctx) {
}

void _initList(Action action, Context<ListAdapterState> ctx) {
  List<ListItemState> mockData = [
    ListItemState(
      type: 0,
      title: '标题0',
      content: '毕竟西湖六月中，风光不与四时同',
    ),
    ListItemState(
      type: 0,
      title: '标题1',
      content: '钱塘依旧，潮生潮落',
    ),
    ListItemState(
      type: 1,
      title: '标题2',
      content: '少年随将讨河湟，头白时清返故乡。十万汉军零落尽，独吹边曲向残阳。',
    ),
    ListItemState(
      type: 0,
      title: '标题3',
      content: '泾水一石，其泥数斗，且溉且粪，长我禾黍',
    ),
    ListItemState(
      type: 0,
      title: '标题4',
      content: '园有桃，其实之肴。心之忧矣，我歌且谣。',
    ),
    ListItemState(
      type: 1,
      title: '标题5',
      content: '疏雨洗天清。枕簟凉生。井桐一叶做秋声。',
    ),
    ListItemState(
      type: 0,
      title: '标题6',
      content: '灯火钱塘三五夜，明月如霜，照见人如画。',
    ),
    ListItemState(
      type: 0,
      title: '标题7',
      content: '游好非少长，一遇尽殷勤。信宿酬清话，益复知为亲。',
    ),
    ListItemState(
      type: 1,
      title: '标题8',
      content: '绿蕙红兰芳信歇，金蕊正风流。',
    ),
    ListItemState(
      type: 1,
      title: '标题9',
      content: '望见葳蕤举翠华，试开金屋扫庭花。',
    ),
  ];
  ctx.dispatch(ListAdapterActionCreator.initList(mockData));
}
