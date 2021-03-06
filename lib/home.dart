import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            item(context, 'HelloWorld', '/helloworld'),
            item(context, 'StatelessWidget', '/widgets/statelesswidget'),
            item(context, 'StatefulWidget', '/widgets/statefulwidget'),
            item(context, 'InheritedWidget', '/widgets/inheritedwidget'),
            item(context, 'Key identifier', '/widgets/key_identifier'),
            item(context, 'FishRedux Counter', '/fish_redux/counter'),
            item(context, 'FishRedux Grid', '/fish_redux/grid_use_adapter'),
            item(context, 'FishRedux DynamicFlowAdapter', '/fish_redux/list_dynamic_flow_adapter')
          ],
        ),
      ),
    );
  }

  Widget item(BuildContext context, String title, String router) {
    return Container(
      height: 80,
      width: double.infinity,
      color: Color(0xFF999999),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, router);
        },
        child: Text(title, style: TextStyle(color: Color(0xff222222),fontSize: 20),),
      ),
    );
  }
}
