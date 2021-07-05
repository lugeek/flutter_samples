import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ListAdapterState state, Dispatch dispatch, ViewService viewService) {
  ListAdapter adapter = viewService.buildAdapter();

  return Scaffold(
    appBar: AppBar(
      title: Text('List DynamicFlowAdapter'),
    ),
    body: Container(
      child: ListView.builder(itemBuilder: adapter.itemBuilder, itemCount: adapter.itemCount),
    ),
  );
}
