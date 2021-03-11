import 'package:flutter/material.dart';

import 'components/dialog_b.dart';

class WidgetC extends StatelessWidget {
  const WidgetC({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WidgetC"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Show Dialog"),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => DialogB(isFinished: true));
          },
        ),
      ),
    );
  }
}
