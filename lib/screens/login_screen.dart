import 'package:fintrack/const/const.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //  Text(
              //   "Login",
              //    style: GoogleFonts.poppins(
              //         fontSize: 32,
              //         fontWeight: FontWeight.w700,
              //         letterSpacing: 1.5,
              //         color: Colors.white
              //       ),
              // ),
              Container(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              
                  Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.amber.withOpacity(0.15),
                    ),
                    child: const Icon(
                      Icons.trending_up,
                      size: 70,
                      color: Colors.amber,
                    ),
                  ),
        
                  const SizedBox(height: 24),
        
                  
                  Text(
                    "FinTrack",
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.5,
                      color: Colors.white
                    ),
                  ),
        
                  const SizedBox(height: 8),
        
                 
                  Text(
                    "Smart Finance Admin",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: Colors.white70,
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
              ),
              ),
              const SizedBox(height: 50),
              _field("Email"),
              _field("Password", isPassword: true),
              const SizedBox(height: 20),
              _button("Login", context),
              TextButton(
                onPressed: () => Navigator.pushNamed(context, '/Create Screen'),
                child: Text(
                  "create account",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _field(String hint, {bool isPassword = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.blueGrey.withOpacity(0.5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Widget _button(String text, BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/Otp Screen');
        },
        child: Container(
          width: double.infinity,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
           color: Colors.amber,
          ),
          child: const Center(
            child: Text(
              "Login",
              style: TextStyle(
                color:kblack,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
