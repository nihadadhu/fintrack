import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  int secondsRemaining = 45;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (secondsRemaining == 0) {
        timer.cancel();
      } else {
        setState(() => secondsRemaining--);
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  Widget otpBox() {
    return Container(
      width: 48,
      height: 56,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white24, width: 1.2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
      
              /// Back button
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
      
              const SizedBox(height: 30),
      
              Text(
                "Verification",
                style: GoogleFonts.inter(color: Colors.white70, fontSize: 14),
              ),
      
              const SizedBox(height: 12),
      
              Text(
                "Check your phone",
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
      
              const SizedBox(height: 12),
      
              Text(
                "We’ve sent a 6-digit code to\n+1 *** *** 1234",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(color: Colors.white54, fontSize: 14),
              ),
      
              const SizedBox(height: 32),
      
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(6, (_) => otpBox()),
              ),
      
              const SizedBox(height: 28),
      
              Text(
                "Didn't receive a code?",
                style: GoogleFonts.inter(color: Colors.white54, fontSize: 13),
              ),
      
              const SizedBox(height: 6),
      
              Text(
                secondsRemaining == 0
                    ? "Resend"
                    : "Resend in 0:${secondsRemaining.toString().padLeft(2, '0')}",
                style: GoogleFonts.inter(
                  color: Colors.purpleAccent,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
      
              const Spacer(),
      
              SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFD600),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/Payment Screen');
                  },
                  child: Text(
                    "Verify",
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
      
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
