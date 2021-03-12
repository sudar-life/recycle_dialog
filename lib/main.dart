import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recycle_dialog/src/controller/select_provider.dart';
import 'package:recycle_dialog/src/widget_a.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider(
        create: (BuildContext context) => SelecteProvider(),
        child: WidgetA(),
      ),
    );
  }
}
