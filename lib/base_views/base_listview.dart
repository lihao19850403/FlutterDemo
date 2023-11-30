import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "列表控件",
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("列表控件"),
          ),
          body: ListView(
            children: const <Widget>[
              ListTile(
                leading: Icon(Icons.alarm),
                title: Text("Alarm"),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text("Phone"),
              ),
              ListTile(
                leading: Icon(Icons.radio_button_checked),
                title: Text("Radio"),
              ),
              ListTile(
                leading: Icon(Icons.check_box),
                title: Text("Check"),
              ),
              ListTile(
                leading: Icon(Icons.check_box),
                title: Text("Check"),
              ),
              ListTile(
                leading: Icon(Icons.check_box),
                title: Text("Check"),
              ),
              ListTile(
                leading: Icon(Icons.check_box),
                title: Text("Check"),
              ),
              ListTile(
                leading: Icon(Icons.check_box),
                title: Text("Check"),
              ),
              ListTile(
                leading: Icon(Icons.check_box),
                title: Text("Check"),
              ),
              ListTile(
                leading: Icon(Icons.check_box),
                title: Text("Check"),
              ),
              ListTile(
                leading: Icon(Icons.check_box),
                title: Text("Check"),
              ),
              ListTile(
                leading: Icon(Icons.check_box),
                title: Text("Check"),
              ),
              ListTile(
                leading: Icon(Icons.check_box),
                title: Text("Check"),
              ),
              ListTile(
                leading: Icon(Icons.check_box),
                title: Text("Check"),
              ),
              ListTile(
                leading: Icon(Icons.check_box),
                title: Text("Check"),
              ),
              ListTile(
                leading: Icon(Icons.check_box),
                title: Text("Check"),
              ),
              ListTile(
                leading: Icon(Icons.check_box),
                title: Text("Check"),
              ),
              ListTile(
                leading: Icon(Icons.check_box),
                title: Text("Check"),
              ),
              ListTile(
                leading: Icon(Icons.check_box),
                title: Text("Check"),
              ),
              ListTile(
                leading: Icon(Icons.alarm),
                title: Text("Alarm"),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text("Phone"),
              ),
            ],
          )),
    );
  }
}
