import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            color: Colors.greenAccent,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.message_outlined,
            color: Colors.greenAccent,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.calendar_view_day_outlined,
            color: Colors.greenAccent,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.medical_services_outlined,
            color: Colors.greenAccent,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_balance_rounded,
            color: Colors.greenAccent,
          ),
          label: '',
        )
      ],
    );
  }
}
