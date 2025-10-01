import 'package:flutter/material.dart';

class WidgetScreen extends StatefulWidget {
  const WidgetScreen({super.key});

  @override
  State<WidgetScreen> createState() => _WidgetScreenState();
}

class _WidgetScreenState extends State<WidgetScreen> {
  String? language;
  String? name;
  bool isLightOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widget Page')),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.deepPurpleAccent, width: 3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(3, 6),
                    blurRadius: 5,
                  ),
                ],
                color: Colors.lightBlueAccent,
              ),
              margin: EdgeInsets.all(19),
              padding: EdgeInsets.all(40),
              child: Text('Hi', style: TextStyle(fontSize: 20)),
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(12),
              child: Text('Ini pake padding'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Icon(Icons.share, color: Colors.deepOrangeAccent, size: 30),
                Icon(
                  Icons.logo_dev_rounded,
                  color: Colors.deepOrangeAccent,
                  size: 30,
                ),
                Icon(Icons.share, color: Colors.deepOrangeAccent, size: 30),
              ],
            ),
            SizedBox(height: 26),
            Column(
              spacing: 16,
              children: [
                Text(language ?? ''),
                DropdownButton<String>(
                  items: [
                    DropdownMenuItem(value: 'Swift', child: Text("Swift")),
                    DropdownMenuItem(value: 'Kotlin', child: Text("Kotlin")),
                    DropdownMenuItem(value: 'Dart', child: Text("Dart")),
                  ],
                  value: language,
                  icon: Icon(Icons.developer_mode_rounded),
                  iconEnabledColor: Colors.deepOrange,
                  hint: Text('Select Language'),
                  onChanged: (String? value) {
                    setState(() {
                      language = value;
                    });
                  },
                ),
              ],
            ),
            Divider(),
            Padding(
              padding: EdgeInsetsGeometry.all(46),
              child: Column(
                children: [
                  Text('Name : ${name ?? ''}'),
                  TextField(
                    onChanged: (value) => setState(() {
                      name = value;
                    }),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(content: Text('Hello $name'));
                        },
                      );
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
            ),
            Divider(),
            Switch.adaptive(
              value: isLightOn,
              onChanged: (bool value) {
                setState(() {
                  isLightOn = value;
                  showSnackbar();
                });
              },
            ),
            SizedBox(height: 40),
            RadioGroup<String>(
              groupValue: language,
              onChanged: (value) {
                setState(() {
                  language = value;
                  showRadioSnackbar();
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RadioListTile(
                    value: 'Kotlin',
                    title: Text('Kotlin'),
                    activeColor: Colors.deepPurpleAccent,
                  ),
                  RadioListTile(
                    value: 'Swift',
                    title: Text('Swift'),
                    activeColor: Colors.deepOrangeAccent,
                  ),
                  RadioListTile(
                    value: 'Dart',
                    title: Text('Dart'),
                    activeColor: Colors.lightBlueAccent,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(isLightOn ? 'Light is On' : 'Light is Off'),
        duration: Duration(seconds: 1),
      ),
    );
  }

  void showRadioSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$language selected'),
        duration: Duration(seconds: 1),
      ),
    );
  }
}
