import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:new_timer/settings.dart';
import 'package:new_timer/views/countdown-page.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({ Key? key }) : super(key: key);

  @override
  State<BottomNavigationBarPage> createState() => _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {

    int _selectedindex = 0;
    static final List<Widget> _Navscreens = [
    CountdownPage(),
    Settings(),

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Navscreens.elementAt(_selectedindex),
      bottomNavigationBar: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40,
          vertical: 6),
          child: GNav(
            backgroundColor: Colors.blue,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Color.fromARGB(255, 13, 109, 187),
            padding: EdgeInsets.all(16),
            gap: 10,
            tabs: [
              GButton(icon: Icons.timelapse_outlined,
              text: "Timer",
              iconSize: 25,
              ),

              GButton(icon: Icons.settings,
              text: "Settings",
              iconSize: 25,
              ),
            ],


            selectedIndex: _selectedindex,
            onTabChange: (index){
            setState(() {
              _selectedindex = index;
            });
            }
          ),
        ),
      ),
    );
  }
}