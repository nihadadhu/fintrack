import 'package:fintrack/widgets/activity_tile_widget.dart';
import 'package:fintrack/widgets/progress_tile_widget.dart';
import 'package:fintrack/widgets/summary_card.dart';
import 'package:flutter/material.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   title: const Text('Reports'),
      //   centerTitle: true,
      // ),
      body: Container(
         decoration: const BoxDecoration(
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
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              // 🔹 Summary Cards
              Row(
                children: const [
                  Expanded(
                    child: SummaryCard(
                      title: 'Today',
                      value: '4',
                      subtitle: 'Events',
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: SummaryCard(
                      title: 'This Week',
                      value: '12',
                      subtitle: 'Events',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const SummaryCard(
                title: 'This Month',
                value: '38',
                subtitle: 'Events',
              ),
        
              const SizedBox(height: 24),
        
              // 📈 Progress Section
              const Text(
                'Event Completion',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 12),
        
              ProgressTile(label: 'Meetings', value: 0.7),
              ProgressTile(label: 'Calls', value: 0.5),
              ProgressTile(label: 'Reviews', value: 0.85),
        
              const SizedBox(height: 24),
        
              // 📋 Recent Activity
              const Text(
                'Recent Activity',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 12),
        
              ActivityTile(title: 'Team Meeting', time: 'Today • 10:30 AM'),
              ActivityTile(title: 'Client Call', time: 'Yesterday • 4:00 PM'),
              ActivityTile(title: 'Design Review', time: 'Jan 27 • 2:15 PM'),
            ],
          ),
        ),
      ),
    );
  }
}
