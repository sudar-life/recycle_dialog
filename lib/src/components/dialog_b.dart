import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recycle_dialog/src/controller/select_provider.dart';
import 'package:recycle_dialog/src/widget_c.dart';
import '../components/radio_select.dart';

class DialogB extends StatelessWidget {
  final bool isFinished;
  const DialogB({Key key, this.isFinished}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SelecteProvider provider =
        Provider.of<SelecteProvider>(context, listen: false);
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: 300,
        child: Column(
          children: [
            Container(child: RadioGroupWidget()),
            TextField(),
            isFinished
                ? RaisedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Okay"),
                  )
                : RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ChangeNotifierProvider<SelecteProvider>.value(
                            value: provider,
                            child: WidgetC(),
                          ),
                        ),
                      );
                    },
                    child: Text("route widget_c"),
                  ),
          ],
        ),
      ),
    );
  }
}
