import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text("Home Page"),
      ),
      // appBar: AppBar(
      //   title: Text("Home Page"),
      //   backgroundColor: Colors.deepPurple[100],
      // ),
    );
  }
}