import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class KeyIdentifierPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Key Identifier'),
      ),
      body: Center(
        child: ListWidget(),
      ),
    );
  }
}

class StatelessContainer extends StatelessWidget {
  final Color color = RandomColor().randomColor();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}

class StatefulContainer extends StatefulWidget {
  StatefulContainer({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _StatefulContainerState();
}

class _StatefulContainerState extends State<StatefulContainer> {
  final Color color = RandomColor().randomColor();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}

class ListWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  List<Widget> statelessWidgets = [
    StatelessContainer(),
    StatelessContainer(),
  ];
  List<Widget> statefulWidgets = [
    StatefulContainer(),
    StatefulContainer(),
  ];
  List<Widget> statefulWidgetsWithKey = [
    StatefulContainer(key: UniqueKey()),
    StatefulContainer(key: UniqueKey()),
  ];
  List<Widget> statefulWidgetsWithKeyWrapper = [
    Padding(
      // key: UniqueKey(), 将key改到这里，child不会重建
      padding: const EdgeInsets.all(5),
      child: StatefulContainer(key: UniqueKey()),
    ),
    Padding(
      // key: UniqueKey(),
      padding: const EdgeInsets.all(5),
      child: StatefulContainer(key: UniqueKey()),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: statelessWidgets,
          ),
          TextButton(
              onPressed: () {
                switchStatelessWidget();
              },
              child: Text('StatelessWidget switch')),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: statefulWidgets,
          ),
          TextButton(
              onPressed: () {
                switchStatefulWidget();
              },
              child: Text('StatefulWidget switch')),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: statefulWidgetsWithKey,
          ),
          TextButton(
              onPressed: () {
                switchStatefulWidgetWithKey();
              },
              child: Text('StatefulWidget with key switch')),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: statefulWidgetsWithKeyWrapper,
          ),
          TextButton(
              onPressed: () {
                switchStatefulWidgetWithKeyWrapper();
              },
              child: Text('StatefulWidget with wrapper switch')),
        ],
      ),
    );
  }

  // 因为color为widget持有，StatelessElement根据widget重新构建，交换成功
  void switchStatelessWidget() {
    setState(() {
      statelessWidgets.insert(0, statelessWidgets.removeAt(1));
    });
  }

  // widget交换，没key，canUpdate为true，Element从原有state更新，不交换Element
  void switchStatefulWidget() {
    setState(() {
      statefulWidgets.insert(0, statefulWidgets.removeAt(1));
    });
  }

  // widget交换，key不同，canUpdate为false，element重新build生成，交换成功
  void switchStatefulWidgetWithKey() {
    setState(() {
      statefulWidgetsWithKey.insert(0, statefulWidgetsWithKey.removeAt(1));
    });
  }

  // widget交换，子widget的key不同，canUpdate为false，element重建
  void switchStatefulWidgetWithKeyWrapper() {
    setState(() {
      statefulWidgetsWithKeyWrapper.insert(
          0, statefulWidgetsWithKeyWrapper.removeAt(1));
    });
  }
}

/*
Key
1. Localkey: 相同父Element的widget之间比较的情况。ValueKey、ObjectKey、UniqueKey、PageStorageKey。
2. GlobalKey: 使用静态常量Map保存对应的Element，通过GlobalKey可以找到Widget、State和Element。
 */