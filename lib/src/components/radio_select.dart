import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recycle_dialog/src/controller/selected_controller.dart';

class RadioGroupWidget extends GetView<SelectedController> {
  const RadioGroupWidget();

  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Radio<String>(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    groupValue: controller.selectGroup.value,
                    value: '1',
                    onChanged: controller.changeSelectedGroup),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.black),
                      text: '선택지1',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          controller.changeSelectedGroup('1');
                        },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Radio<String>(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    groupValue: controller.selectGroup.value,
                    value: '2',
                    onChanged: controller.changeSelectedGroup),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.black),
                      text: '선택지2',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          controller.changeSelectedGroup('2');
                        },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Radio<String>(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    groupValue: controller.selectGroup.value,
                    value: '3',
                    onChanged: controller.changeSelectedGroup),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.black),
                      text: '선택지3',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          controller.changeSelectedGroup('3');
                        },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Radio<String>(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    groupValue: controller.selectGroup.value,
                    value: '4',
                    onChanged: controller.changeSelectedGroup),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.black),
                      text: '선택지4',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          controller.changeSelectedGroup('4');
                        },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
