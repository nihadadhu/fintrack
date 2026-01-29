import 'package:fintrack/widgets/glass_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _goToLogin();
  }

  void _goToLogin() async {
    await Future.delayed(const Duration(seconds: 5));

    if (!mounted) return;

    Navigator.pushReplacementNamed(context, '/Login');
  }

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
          child: GlassCard(
            radius: 32,
            child: SizedBox(
              width: 280,
              height: 280,
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
          ),
        ),
      ),
    );
  }
}
