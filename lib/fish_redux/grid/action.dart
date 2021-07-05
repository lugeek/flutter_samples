import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum GridAction { loadData }

class GridActionCreator {
  static Action onLoadData() {
    return const Action(GridAction.loadData);
  }
}
