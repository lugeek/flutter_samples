import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(CounterState state, Dispatch dispatch,
    ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
        title: Text('CounterFishRedux')
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(state.count.toString())],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () => {
        dispatch(CounterActionCreator.add())
      },
      tooltip: 'add',
      child: Icon(Icons.add),
    ),
  );
}
