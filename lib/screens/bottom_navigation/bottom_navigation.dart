import 'package:flutter/material.dart';
import 'package:nexah/screens/bottom_navigation/home.dart';
import 'package:nexah/screens/bottom_navigation/profile.dart';
import 'package:nexah/screens/bottom_navigation/timer.dart';

class BottomNavigation extends StatefulWidget {
  static const String iD = '/nav';

  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: const [
            HomeScreen(),
            TimerScreen(),
            ProfileScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFFC4C4C4),
          enableFeedback: true,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.all(8.0),
                color: _currentIndex == 0
                    ? const Color(0xFF5DB075)
                    : const Color(0xFFD8CECE),
                child: const Icon(
                  Icons.home,
                  color: Colors.black,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.all(8.0),
                color: _currentIndex == 1
                    ? const Color(0xFF5DB075)
                    : const Color(0xFFD8CECE),
                child: const Icon(
                  Icons.alarm,
                  color: Colors.black,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.all(8.0),
                color: _currentIndex == 2
                    ? const Color(0xFF5DB075)
                    : const Color(0xFFD8CECE),
                child: const Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ),
              label: '',
            ),
          ],
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
