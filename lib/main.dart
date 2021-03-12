import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recycle_dialog/src/controller/selected_controller.dart';
import 'package:recycle_dialog/src/widget_a.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(SelectedController());
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WidgetA(),
    );
  }
}
