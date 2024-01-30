import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text("Profile Page"),
      ),
      // appBar: AppBar(
      //   title: Text("Home Page"),
      //   backgroundColor: Colors.deepPurple[100],
      // ),
    );
  }
}