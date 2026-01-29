import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();

  final Map<DateTime, List<String>> _events = {
    DateTime.utc(2026, 1, 29): [
      'Team Meeting',
      'UI Review',
    ],
    DateTime.utc(2026, 1, 30): [
      'Client Call',
      'Design Presentation',
    ],
  };

  List<String> getEventsForDay(DateTime day) {
    return _events[DateTime.utc(day.year, day.month, day.day)] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    final events = getEventsForDay(_selectedDay);

    return Scaffold(
      // backgroundColor: const Color(0xFF0F172A),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   title: const Text('Calendar'),
      //   centerTitle: true,
      // ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF0F2027),
              Color(0xFF203A43),
              Color(0xFF2C5364),
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 100,),
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF0F2027),
                Color(0xFF203A43),
                Color(0xFF2C5364),
              ],
            ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TableCalendar(
  firstDay: DateTime.utc(2020, 1, 1),
  lastDay: DateTime.utc(2030, 12, 31),
  focusedDay: _focusedDay,
  selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
  eventLoader: getEventsForDay,

  onDaySelected: (selectedDay, focusedDay) {
    setState(() {
      _selectedDay = DateTime.utc(
        selectedDay.year,
        selectedDay.month,
        selectedDay.day,
      );
      _focusedDay = focusedDay;
    });
  },

  calendarStyle: CalendarStyle(
    outsideTextStyle: const TextStyle(
      color: Colors.white38,
    ),
    defaultTextStyle: const TextStyle(
      color: Colors.white,
    ),
    weekendTextStyle: const TextStyle(
      color: Colors.white70,
    ),
    disabledTextStyle: const TextStyle(
      color: Colors.white24,
    ),
    selectedDecoration: const BoxDecoration(
      color:  Color(0xFF2C5364),
      shape: BoxShape.circle,
    ),
    todayDecoration: BoxDecoration(
      color: Color(0xFF2C5364),
      shape: BoxShape.circle,
    ),
    markerDecoration: const BoxDecoration(
      color: Colors.white,
      shape: BoxShape.circle,
    ),
  ),

  daysOfWeekStyle: const DaysOfWeekStyle(
    weekdayStyle: TextStyle(
      color: Colors.white70,
      fontWeight: FontWeight.w500,
    ),
    weekendStyle: TextStyle(
      color: Colors.white54,
      fontWeight: FontWeight.w500,
    ),
  ),

  headerStyle: const HeaderStyle(
    formatButtonVisible: false,
    titleCentered: true,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    leftChevronIcon:
        Icon(Icons.chevron_left, color: Colors.white),
    rightChevronIcon:
        Icon(Icons.chevron_right, color: Colors.white),
  ),
)

        
            ),
        
            // 📋 Event Schedule List
            Expanded(
              child: events.isEmpty
                  ? const Center(
                      child: Text(
                        'No Events',
                        style: TextStyle(color: Colors.white54),
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: events.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            // color: const Color(0xFF1E293B),
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 8,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.cyanAccent,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  events[index],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: Colors.white54,
                              )
                            ],
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
