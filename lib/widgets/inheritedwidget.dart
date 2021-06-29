import 'package:flutter/material.dart';

class InheritedWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('InheritedWidget')),
      body: FrogColor(
        color: Colors.green,
        child: Builder(builder: (BuildContext innerContext) {
          return Text('frog', style: TextStyle(color: FrogColor
              .of(innerContext)
              .color));
        }),
      ),
    );
  }
}

class FrogColor extends InheritedWidget {
  final Color color;

  const FrogColor({Key? key, required this.color, required Widget child})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(FrogColor old) => color != old.color;

  static FrogColor of(BuildContext context) {
    final FrogColor? result = context.dependOnInheritedWidgetOfExactType<
        FrogColor>();
    assert(result != null, 'No FrogColor found in context');
    return result!;
  }
}