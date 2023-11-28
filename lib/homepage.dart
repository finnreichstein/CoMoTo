
// Importing used packages and frameworks
import 'package:comoto/pages/account.dart';
import 'package:comoto/pages/cook.dart';
import 'package:comoto/pages/home.dart';
import 'package:comoto/pages/search.dart';
import 'package:comoto/pages/upload.dart';
import 'package:flutter/material.dart';

// HomePage is a StatefulWidget
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  // Overriding createState method
  @override
  _HomePageState createState() => _HomePageState();
}

// _HomePageState is the state of HomePage
class _HomePageState extends State<HomePage> {

  // Variable to keep track of selected index
  int _selectedIndex = 0;

  // This handles the tab changes
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // List of different pages to navigate to (on the bottom of the app)
  final List<Widget> _children = [
UserHome(),
UserSearch(),
UserCook(),
UserNew(),
UserAccount(),
  ];

  // Overriding build method
  @override
  Widget build(BuildContext context) {

    // Returning a Scaffold widget
    return Scaffold(

      // Body of the Scaffold is determined by the selected index
      body: _children[_selectedIndex],

      // BottomNavigationBar for navigation between tabs
      bottomNavigationBar: BottomNavigationBar(

        // Current index is determined by _selectedIndex
        currentIndex: _selectedIndex,

        // Handling tab changes with _navigateBottomNavBar
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,

        // Items of the BottomNavigationBar
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.fastfood, color: _selectedIndex == 0 ? Color.fromRGBO(209, 17, 0, 0.94) : Colors.grey), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search, color: _selectedIndex == 1 ? Color.fromRGBO(209, 17, 0, 0.94) : Colors.grey), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_chat, color: _selectedIndex == 2 ? Color.fromRGBO(209, 17, 0, 0.94) : Colors.grey), label: 'cook'),
          BottomNavigationBarItem(icon: Icon(Icons.upload, color: _selectedIndex == 3 ? Color.fromRGBO(209, 17, 0, 0.94) : Colors.grey), label: 'new'),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: _selectedIndex == 4 ? Color.fromRGBO(209, 17, 0, 0.94) : Colors.grey), label: 'account'),
        ],

      ),
    );
  }
}


