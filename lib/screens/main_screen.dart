import 'package:fintrack/screens/dashboard_screen.dart';
import 'package:fintrack/screens/members_screen.dart';
import 'package:fintrack/screens/reports_screen.dart';
import 'package:fintrack/screens/schedule_screen.dart';
import 'package:flutter/material.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
   DashboardScreen(),
   MembersScreen(),
   CalendarScreen(),
   ReportScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _bottomIcon(IconData icon, int index) {
    final isActive = _currentIndex == index;

    return IconButton(
      icon: Icon(
        icon,
        color: isActive ? Colors.amber : Colors.white54,
        size: isActive ? 28 : 24,
      ),
      onPressed: () => _onItemTapped(index),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),

      body: _pages[_currentIndex],

      bottomNavigationBar: BottomAppBar(
        // color: const Color(0xFF121212),
       color:  Color(0xFF203A43),
        
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _bottomIcon(Icons.dashboard, 0),
            _bottomIcon(Icons.people, 1),
            _bottomIcon(Icons.calendar_month, 2),
            _bottomIcon(Icons.bar_chart, 3),
          ],
        ),
      ),
    );
  }
}
