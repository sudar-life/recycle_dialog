import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recycle_dialog/src/controller/select_provider.dart';

class RadioGroupWidget extends StatelessWidget {
  RadioGroupWidget();
  SelecteProvider selectProvider;
  setSelectedRadioTile(String val) {
    selectProvider.updateSelectGroup(val);
  }

  @override
  Widget build(BuildContext context) {
    selectProvider = Provider.of<SelecteProvider>(context);
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Radio<String>(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  groupValue: selectProvider.selectGroup,
                  value: '1',
                  onChanged: (String newValue) {
                    setSelectedRadioTile(newValue);
                  }),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    text: '선택지1',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        setSelectedRadioTile('1');
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
                  groupValue: selectProvider.selectGroup,
                  value: '2',
                  onChanged: (String newValue) {
                    setSelectedRadioTile(newValue);
                  }),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    text: '선택지2',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        setSelectedRadioTile('2');
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
                  groupValue: selectProvider.selectGroup,
                  value: '3',
                  onChanged: (String newValue) {
                    setSelectedRadioTile(newValue);
                  }),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    text: '선택지3',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        setSelectedRadioTile('3');
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
                  groupValue: selectProvider.selectGroup,
                  value: '4',
                  onChanged: (String newValue) {
                    setSelectedRadioTile(newValue);
                  }),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    text: '선택지4',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        setSelectedRadioTile('4');
                      },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
