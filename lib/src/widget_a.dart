import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recycle_dialog/src/components/dialog_b.dart';
import 'package:recycle_dialog/src/controller/select_provider.dart';

class WidgetA extends StatelessWidget {
  const WidgetA({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SelecteProvider provider =
        Provider.of<SelecteProvider>(context, listen: false);
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
              builder: (context) =>
                  ChangeNotifierProvider<SelecteProvider>.value(
                value: provider,
                child: DialogB(isFinished: false),
              ),
            );
          },
        ),
      ),
    );
  }
}
