import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(GridState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Grid'),
    ),
    body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        childAspectRatio: 1 / 1,
        padding: EdgeInsets.all(20),
        children: List.generate(state.list.length, (index) {
          return Center(
            child: Card(
              color: Colors.blueGrey,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(100),
                onTap: () {
                  //todo click
                },
                child: Container(
                  width: 200,
                  height: 200,
                  child: Center(
                    child: Text(state.list[index]),
                  ),
                ),
              ),
            ),
          );
        })),
  );
}
