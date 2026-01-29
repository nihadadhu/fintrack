import 'package:fintrack/const/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color actionBgColor;

  const ActionButton({super.key, required this.icon, required this.label, required this.actionBgColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,

          
          decoration: BoxDecoration(
            color: actionBgColor,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Icon(icon, color: kblack)),
        const SizedBox(height: 6),
        Text(
          label,
          style: GoogleFonts.poppins(color: Colors.grey, fontSize: 11),
        ),
      ],
    );
  }
}
