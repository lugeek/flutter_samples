import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    ListItemState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
    height: 120,
    color: Colors.white,
    child: GestureDetector(
      onTap: () {},
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 左边
          Container(
            padding: const EdgeInsets.only(right: 5.0),
            child: Center(
              child: Icon(
                state.type == 1 ? Icons.account_circle : Icons.account_box,
                size: 50.0,
              ),
            ),
          ),
          // 右边
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                  child: Text(
                    state.title,
                    style: TextStyle(fontSize: 22.0),
                  ),
                ),
                Text(
                  state.content,
                  style: TextStyle(fontSize: 16.0),
                )
              ],
            )
          ),
        ],
      ),
    ),
  );
}
