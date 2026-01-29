import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScheduleTile extends StatelessWidget {
  final String title, time, trainer;
  final IconData icon;
  final Color iconbgColors;

  const ScheduleTile({
    super.key,
    required this.title,
    required this.time,
    required this.trainer,
    required this.icon, required this.iconbgColors
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        // color: const Color(0xFF1A1F2B),
         color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
            color: iconbgColors,

            borderRadius: BorderRadius.circular(50)
            ),
            
            child: Icon(icon as IconData?)),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w500)),
              Text("$time • $trainer",
                  style: GoogleFonts.poppins(color: Colors.grey, fontSize: 12)),
            ],
          )
        ],
      ),
    );
  }
}
