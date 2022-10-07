import 'package:flutter/material.dart';
import 'package:jsskos_app/screens/home.dart';
import 'package:jsskos_app/screens/notifcation.dart';
import 'package:jsskos_app/screens/search.dart';
import 'package:jsskos_app/screens/settings.dart';

class MyBottomNav extends StatefulWidget {
  @override
  MyBottomNavState createState() {
    return new MyBottomNavState();
  }
}

class MyBottomNavState extends State<MyBottomNav> {
  int _currentIndex = 0;

  _onTapItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

//CORE PART!!

  Widget _myBottomNavBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      //fixedColor: Colors.orange,
      onTap: _onTapItem,
      type: BottomNavigationBarType.fixed,

      selectedFontSize: 20,
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        //HOME
        const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
            backgroundColor: Colors.orange),

        //SEARCH
        const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.orange),

        //NOTOFICATION
        const BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
            backgroundColor: Colors.orange),

        //SETTINGS
        const BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.orange),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Center(
          child: Text('JSSKOS APP'),
        ),
        backgroundColor: Color.fromARGB(255, 214, 84, 67),
        //elevation: Constants.elevation(),
      ),*/
      body: BottomNavContents(
        index: _currentIndex,
      ),
      bottomNavigationBar: _myBottomNavBar(),
    );
  }
}

class BottomNavContents extends StatelessWidget {
  BottomNavContents({required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: navBarContents(index, context),
      ),
    );
  }

  Widget navBarContents(int index, BuildContext context) {
    switch (index) {
      case 0:
        return HomeScreen();
      case 1:
        return Search();
      case 2:
        return notifications();
      case 3:
        return settings();
      default:
        return Container();
    }
  }
}
