import 'package:flutter/material.dart';
import 'package:recycle_dialog/src/components/dialog_b.dart';

class WidgetA extends StatelessWidget {
  const WidgetA({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WidgetA"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Show Dialog"),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => DialogB(isFinished: false));
          },
        ),
      ),
    );
  }
}
