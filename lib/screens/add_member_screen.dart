import 'package:fintrack/const/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddMemberScreen extends StatelessWidget {
  const AddMemberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(1),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // IconButton(
                      //   onPressed: () => Navigator.pop(context),
                      //   icon: const Icon(Icons.arrow_back,
                      //       color: Colors.white),
                      // ),
                      // Text(
                      //   "Add Member",
                      //   style: GoogleFonts.poppins(
                      //     fontSize: 18,
                      //     fontWeight: FontWeight.w600,
                      //     color: Colors.white,
                      //   ),
                      // ),
                      // TextButton(
                      //   onPressed: () {},
                      //   child: const Text(
                      //     "Cancel",
                      //     style: TextStyle(color: Colors.grey),
                      //   ),
                      // ),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back,
                            color: Colors.white),
                      ),
                    ],
                  ),
            
                  const SizedBox(height: 24),
            
                 
                  Center(
                    child: Column(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: const Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Upload Picture",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
            
                  const SizedBox(height: 24),
            
                  _label("Full Name"),
                  _inputField("Enter member's full name"),
            
                  _label("Email"),
                  _inputField("Enter email address"),
            
                  _label("Phone Number"),
                  _inputField("Enter phone number",
                      keyboardType: TextInputType.phone),
            
                  _label("Membership Type"),
                  _dropdownField(),
            
                  _label("Start Date"),
                  _dateField(),
            
                  const SizedBox(height: 30),
            
               
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber.withOpacity(0.7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Save Member",
                        style:  GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.5,
                    color: kblack
                  ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  

  Widget _label(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6, top: 14),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 13,
        ),
      ),
    );
  }

  Widget _inputField(String hint,
      {TextInputType keyboardType = TextInputType.text}) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextField(
        keyboardType: keyboardType,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }

  Widget _dropdownField() {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(14),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          dropdownColor: const Color(0xFF1C1F2A),
          value: null,
          hint: const Text(
            "Select membership plan",
            style: TextStyle(color: Colors.grey),
          ),
          icon: const Icon(Icons.keyboard_arrow_down,
              color: Colors.grey),
          items: ["Monthly", "Quarterly", "Yearly"]
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text(e,
                      style: const TextStyle(color: Colors.white)),
                ),
              )
              .toList(),
          onChanged: (value) {},
        ),
      ),
    );
  }

  Widget _dateField() {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: const [
          Expanded(
            child: Text(
              "mm / dd / yyyy",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Icon(Icons.calendar_today, color: Colors.grey, size: 18),
        ],
      ),
    );
  }
}
