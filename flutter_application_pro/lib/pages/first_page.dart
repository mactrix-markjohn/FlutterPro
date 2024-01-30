// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_pro/pages/home_page.dart';
import 'package:flutter_application_pro/pages/profile_page.dart';
import 'package:flutter_application_pro/pages/second_page.dart';
import 'package:flutter_application_pro/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // this keeps track of the current page to display
  int _selectedIndex = 0;

  // this method updates the new seleted index
  void _navigateButtomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // the pagewe have in our app
  final List _pages = [
    // homepage
    HomePage(),

    // profilepage
    ProfilePage(),

    // settingspage
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("First page"),
        backgroundColor: Colors.deepPurple[100],),
      body: _pages[_selectedIndex],
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            // common to place a drawe header here
            DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 40,
              )
            ),

            // home page list tile
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: () {
                // pop the drawer first
                Navigator.pop(context);

                // go to home page
                Navigator.pushNamed(context, '/homepage');
              },
            ),

            // setting page list tile
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
              onTap: () {

                // pop the drawer first
                Navigator.pop(context);

                Navigator.pushNamed(context, '/settingspage');
              },
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateButtomBar,
        items: [
          // home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
            ),


          // profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            ),


          // settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            ),



        ]),
      
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text("Go to Second Page"), 
      //     onPressed: () {
      //       // navigate to second page
      //       Navigator.pushNamed(context, '/secondpage');
      //       // Navigator.push(
      //       //   context, 
      //       //   MaterialPageRoute(
      //       //     builder: (context) => SecondPage()),);
      //   },)
      // ),
    );
  }
}