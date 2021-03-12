import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RadioGroupWidget extends StatefulWidget {
  final String feedback;

  const RadioGroupWidget({this.feedback});

  @override
  _RadioGroupWidgetState createState() => _RadioGroupWidgetState(feedback);
}

class _RadioGroupWidgetState extends State<RadioGroupWidget> {
  String feedback;
  _RadioGroupWidgetState(this.feedback);
  String selectGroup;

  @override
  void initState() {
    super.initState();
    selectGroup = feedback;
  }

  @override
  void dispose() {
    super.dispose();
  }

  setSelectedRadioTile(String val) {
    setState(() {
      selectGroup = val;
      print('setSelectedRadioTile : $selectGroup');
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Radio<String>(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  groupValue: selectGroup,
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
                  groupValue: selectGroup,
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
                  groupValue: selectGroup,
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
                  groupValue: selectGroup,
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
