import 'package:fish_redux/fish_redux.dart';

class GridState implements Cloneable<GridState> {
  List<String> list = [];

  @override
  GridState clone() {
    return GridState()..list = list;
  }
}

GridState initState(Map<String, dynamic> args) {
  return GridState();
}
