import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatCard extends StatelessWidget {
  final String title, value, change;

  const StatCard({
    super.key,
    required this.title,
    required this.value,
    required this.change,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        // color: const Color(0xFF1A1F2B),
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: GoogleFonts.poppins(color: Colors.grey, fontSize: 12,letterSpacing: 1,fontWeight: FontWeight.bold)),
          const SizedBox(height: 15,),
          Text(value,
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w600)),
          Text(change,
              style: GoogleFonts.poppins(color: Colors.greenAccent,fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
