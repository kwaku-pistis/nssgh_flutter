import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
 // bool isSwitched = _retrieveState() as bool;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(16),
            child: Text(
              'Notification',
              style: TextStyle(
                color: Color(0xffce1126),
                fontSize: 16,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            child: LabeledSwitch(
              label: 'Turn Notification On / Off',
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              value: _retrieveState(),
              onChanged: (bool value) {
                //setState(() {
                  // isSwitched = value;
                  _toggleNotification(value);
                //});
              },
            ),
          ),
        ],
      ),
    );
  }

  _toggleNotification(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //int counter = (prefs.getInt('counter') ?? 0) + 1;
    //print('Pressed $counter times.');
    await prefs.setBool('state', value);
  }

  _retrieveState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool value = prefs.getBool('state') ?? true;
    return value;
  }
}



/// this is a custom toggle button with a label
class LabeledSwitch extends StatelessWidget {
  const LabeledSwitch({
    this.label,
    this.padding,
    this.groupValue,
    this.value,
    this.onChanged,
  });

  final String label;
  final EdgeInsets padding;
  final bool groupValue;
  final bool value;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Expanded(child: Text(label)),
            Switch(
              value: value,
              onChanged: (bool newValue) {
                onChanged(newValue);
              },
            ),
          ],
        ),
      ),
    );
  }
}

// ...

//bool _isSelected = false;

// @override
// Widget build(BuildContext context) {
//   return LabeledSwitch(
//     label: 'This is the label text',
//     padding: const EdgeInsets.symmetric(horizontal: 20.0),
//     value: _isSelected,
//     onChanged: (bool newValue) {
//       setState(() {
//         _isSelected = newValue;
//       });
//     },
//   );
// }
