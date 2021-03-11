import 'package:flutter/material.dart';
import 'package:recycle_dialog/src/widget_c.dart';

class DialogB extends StatelessWidget {
  final bool isFinished;
  const DialogB({Key key, this.isFinished}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: 300,
        child: Column(
          children: [
            Text("DIALOG"),
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
                        MaterialPageRoute(builder: (context) => WidgetC()),
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
