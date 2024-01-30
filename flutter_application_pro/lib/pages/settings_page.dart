import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text("Settings Page"),
      ),
      // appBar: AppBar(
      //   title: Text("Settings Page"),
      //   backgroundColor: Colors.deepPurple[100],
      // ),
    );
  }
}