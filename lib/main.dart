import 'package:flutter/material.dart';
import 'colorfullbutton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Button Belah Ketupat Warna Warni"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ColorfulButton(Colors.pink, Colors.red, Icons.adb),
              ColorfulButton(Colors.blue, Colors.pink, Icons.comment),
              ColorfulButton(Colors.yellow, Colors.green, Icons.computer),
              ColorfulButton(Colors.green, Colors.yellow, Icons.link),
            ],
          ),
        ),
      ),
    );
  }
}
