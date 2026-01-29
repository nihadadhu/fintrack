import 'package:fintrack/model/member_model.dart';
import 'package:fintrack/widgets/members_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MembersScreen extends StatefulWidget {
  const MembersScreen({super.key});

  @override
  State<MembersScreen> createState() => _MembersScreenState();
}

class _MembersScreenState extends State<MembersScreen> {
  final List<Member> members = [
    Member(name: "Nihad", dateTime: "12 Jan Wed • 10:30 AM", isActive: true),
    Member(name: "Ayaan", dateTime: "13 Jan Thu • 11:15 AM", isActive: true),
    Member(name: "Sara", dateTime: "14 Jan Fri • 09:45 AM", isActive: false),
    Member(name: "Rahul", dateTime: "15 Jan Sat • 01:20 PM", isActive: true),
    Member(name: "Zoya", dateTime: "16 Jan Sun • 06:00 PM", isActive: true),
    Member(name: "Arjun", dateTime: "17 Jan Mon • 08:10 AM", isActive: false),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Members",
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.5,
                        color: Colors.white60,
                      ),
                    ),
                    FloatingActionButton(
                      mini: true,
                      onPressed: () {
                        Navigator.pushNamed(context, '/Add Member');
                      },
                      backgroundColor: Colors.amber.withOpacity(0.7),
                      child: Icon(Icons.add, color: Colors.black),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              _buildSearchBar(),
              Expanded(
                child: ListView.builder(
                  itemCount: members.length,
                  itemBuilder: (context, index) {
                    final member = members[index];
                    return MembersCard(
                      name: member.name,
                      dateAndTime: member.dateTime,
                      isActivee: member.isActive,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildSearchBar() {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(14),
      ),
      child: const TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Search members",
          hintStyle: TextStyle(color: Colors.grey),
          icon: Icon(Icons.search, color: Colors.grey),
        ),
      ),
    ),
  );
}
