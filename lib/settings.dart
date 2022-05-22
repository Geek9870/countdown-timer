import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Lottie.asset("settings.json",
              height: 500, width: 500),
            ),
          ]
        ),
      ),
    );
  }
}