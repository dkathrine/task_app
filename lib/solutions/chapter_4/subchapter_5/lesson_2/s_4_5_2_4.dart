import 'package:flutter/material.dart';

class S4524 extends StatelessWidget {
  const S4524({super.key});
  @override
  Widget build(BuildContext context) {
    return ShowHideNameWidget();
  }
}

class ShowHideNameWidget extends StatefulWidget {
  const ShowHideNameWidget({super.key});

  @override
  State<ShowHideNameWidget> createState() => _ShowHideNameWidgetState();
}

class _ShowHideNameWidgetState extends State<ShowHideNameWidget> {
  String _name = '';
  String _title = 'Name anzeigen';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(_name),
        ElevatedButton(
            onPressed: () {
              setState(() {
                _name = _name == '' ? 'Kathrine' : '';
                _title = _title == 'Name anzeigen'
                    ? 'Name verstecken'
                    : 'Name anzeigen';
              });
            },
            child: Text(_title))
      ],
    );
  }
}
