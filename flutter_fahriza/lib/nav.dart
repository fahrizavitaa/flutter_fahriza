import 'package:flutter/material.dart';
import 'package:flutter_fahriza/date_screen.dart';
import 'package:flutter_fahriza/dashboard_screen.dart';
import 'package:flutter_fahriza/time_screen.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    Dashboard();
    Date();
    Time();
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Fahriza'),
      ),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.widgets),
          title: Text('Dashboard'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_view_month),
          title: Text('Date'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.timer),
          title: Text('Time'),
        ),   
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTap,
      ),
    );
  }
}