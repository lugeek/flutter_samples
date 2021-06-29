import 'package:flutter/material.dart';

class StateLessWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StatelessWidget demo'),
      ),
      body: Center(
        child: ItemCount('birds', 5),
      ),
    );
  }

}

class ItemCount extends StatelessWidget {
  final String name;
  final int count;

  ItemCount(this.name, this.count);

  @override
  Widget build(BuildContext context) {
    return Text('$name:$count');
  }
}