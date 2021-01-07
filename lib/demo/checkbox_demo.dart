import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool _checkboxItemA = true;

  int _radioGroupA = 0;
  void _handleRadionChanged(int value) {
    setState(() {
      _radioGroupA = value;
    });
  }

  bool _switchItemA = false;
  double _silderItemA = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckboxDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              value: _silderItemA,
              onChanged: (value) {
                setState(() {
                  _silderItemA = value;
                });
              },
              activeColor: Theme.of(context).accentColor,
              inactiveColor: Theme.of(context).accentColor.withOpacity(0.3),
              min: 0.0,
              max: 10.0,
              divisions: 20,
              label: '$_silderItemA',
            ),
            Text('SliderValue:$_silderItemA'),
            SizedBox(
              height: 16,
            ),
            CheckboxListTile(
              value: _checkboxItemA,
              onChanged: (value) {
                setState(() {
                  _checkboxItemA = value;
                });
              },
              title: Text('checkbox item a'),
              subtitle: Text('description'),
              secondary: Icon(Icons.book),
              selected: _checkboxItemA,
            ),
            SizedBox(
              height: 16,
            ),
            Text('RadioGroupValue:$_radioGroupA'),
            RadioListTile(
              value: 0,
              groupValue: _radioGroupA,
              onChanged: _handleRadionChanged,
              title: Text('optionA'),
              subtitle: Text('desA'),
              secondary: Icon(Icons.filter_1),
              selected: _radioGroupA == 0,
            ),
            RadioListTile(
              value: 1,
              groupValue: _radioGroupA,
              onChanged: _handleRadionChanged,
              title: Text('optionB'),
              subtitle: Text('desB'),
              secondary: Icon(Icons.filter_2),
              selected: _radioGroupA == 1,
            ),
            SwitchListTile(
              value: _switchItemA,
              onChanged: (value) {
                setState(() {
                  _switchItemA = value;
                });
              },
              title: Text('switch item a'),
              subtitle: Text('description'),
              secondary:
                  Icon(_switchItemA ? Icons.visibility : Icons.visibility_off),
              selected: _switchItemA,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: _checkboxItemA,
                  onChanged: (value) {
                    setState(() {
                      _checkboxItemA = value;
                    });
                  },
                  activeColor: Colors.black,
                ),
                Radio(
                  value: 0,
                  groupValue: _radioGroupA,
                  onChanged: _handleRadionChanged,
                  activeColor: Colors.blue,
                ),
                Radio(
                  value: 1,
                  groupValue: _radioGroupA,
                  onChanged: _handleRadionChanged,
                  activeColor: Colors.blue,
                ),
                Switch(
                  value: _switchItemA,
                  onChanged: (value) {
                    setState(() {
                      _switchItemA = value;
                    });
                  },
                ),
                Text(
                  _switchItemA ? '☺' : '😿',
                  style: TextStyle(fontSize: 32),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
