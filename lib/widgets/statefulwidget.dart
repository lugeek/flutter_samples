
import 'package:flutter/material.dart';

class StatefulWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StatelessWidget demo'),
      ),
      body: Center(
        child: ItemCounter('birds'),
      ),
    );
  }

}

class ItemCounter extends StatefulWidget {
  final String name;

  ItemCounter(this.name);

  @override
  State<StatefulWidget> createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          count++;
        });
      },
      child: Text('${widget.name}: $count'),
    );
  }

  @override
  void didUpdateWidget(covariant ItemCounter oldWidget) {
    super.didUpdateWidget(oldWidget);
    // do
  }
}