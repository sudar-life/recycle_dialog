import 'package:flutter/material.dart';

class SelecteProvider extends ChangeNotifier {
  String selectGroup = "1";

  void updateSelectGroup(String selectGroup) {
    this.selectGroup = selectGroup;
    notifyListeners();
  }
}
