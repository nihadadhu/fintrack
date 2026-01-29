import 'package:fintrack/widgets/action_button.dart';
import 'package:fintrack/widgets/line_chart.dart';
import 'package:fintrack/widgets/schedule_tile.dart';
import 'package:fintrack/widgets/stat_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F1218),
     
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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _header(),
                const SizedBox(height: 20),
                _statsGrid(),
                const SizedBox(height: 20),
                _revenueCard(),
                const SizedBox(height: 20),
                _quickActions(),
                const SizedBox(height: 20),
                _todaySchedule(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// HEADER
  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(height: 15),
            const CircleAvatar(
              backgroundColor: Colors.amber,
              child: Icon(Icons.person, color: Colors.black),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Good Morning",
                    style: GoogleFonts.poppins(
                        color: Colors.grey, fontSize: 12)),
                Text("Nihad",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600)),
              ],
            ),
          ],
        ),
        const Icon(Icons.notifications_none, color: Colors.white)
      ],
    );
  }

 
  Widget _statsGrid() {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 1.4,
      children: const [
        StatCard(title: "Active Members", value: "1,204", change: "+5%"),
        StatCard(title: "Monthly Revenue", value: "\$15,890", change: "+2.1%"),
        StatCard(title: "Today's Check-ins", value: "86", change: "-1.5%"),
        StatCard(title: "New Members", value: "12", change: "+8%"),
      ],
    );
  }

 
  Widget _revenueCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      
      decoration: _cardDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Revenue Overview",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text("\$15,890  • Last 30 days",
              style: GoogleFonts.poppins(color: Colors.greenAccent,fontWeight: FontWeight.bold)),
          const SizedBox(height: 40),
          Center(
            child: RevenueSparkLine()
          ),
         
        ],
      ),
    );
  }

 
  Widget _quickActions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Quick Actions",
            style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w600)),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ActionButton(icon: Icons.person_add, label: "New Member", actionBgColor: Colors.yellow,),
            ActionButton(icon: Icons.add_circle, label: "New Class", actionBgColor: Colors.purple,),
            ActionButton(icon: Icons.qr_code_scanner, label: "Check-in", actionBgColor: Colors.green,),
            ActionButton(icon: Icons.send, label: "Message", actionBgColor: Colors.grey,),
          ],
        ),
      ],
    );
  }

  
  Widget _todaySchedule() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Today's Schedule",
            style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w600)),
        const SizedBox(height: 12),
        ScheduleTile(
          icon: Icons.fitness_center,
          title: "Morning HIIT",
          time: "08:00 AM",
          trainer: "Jane Doe", iconbgColors: Colors.purpleAccent.withOpacity(0.7),
        ),
        ScheduleTile(
          icon: Icons.person,
          title: "Vinyasa Yoga",
          time: "09:30 AM",
          trainer: "Mike Ross", iconbgColors: Colors.yellowAccent.withOpacity(0.7),
        ),
        ScheduleTile(
          icon: Icons.bike_scooter,
          title: "Spin Cycle",
          time: "11:00 AM",
          trainer: "Sarah Lee", iconbgColors: Colors.green.withOpacity(0.7),
        ),
      ],
    );
  }

 

  BoxDecoration _cardDecoration() {
    return BoxDecoration(
     color: Colors.grey.withOpacity(0.1),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
