import 'package:fintrack/widgets/plan_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentPlansScreen extends StatelessWidget {
  const PaymentPlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(

      //   elevation: 0,
      //   leading: const Icon(Icons.arrow_back_ios_new, size: 18),
      //   // title: const Text("Payment Plans",st),
      //   centerTitle: true,
      //   actions: [
      //     GestureDetector(
      //       onTap: () {
      //         Navigator.pushReplacementNamed(context,  '/Main Screen');
      //       },
      //       child: Text(
      //         "Skip",
      //         style: TextStyle(
      //           color: Colors.white,
      //           fontWeight: FontWeight.bold,
      //           fontSize: 17,
      //         ),
      //       ),
      //     ),
      //     SizedBox(width: 22),
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.black),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  SizedBox(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/Main Screen');
                    },
                    child: Text(
                      "Skip",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.5,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              // _searchBar(),
              const SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: const [
                    PlanCard(
                      title: "Gold Membership",
                      price: "\$99",
                      period: "per month",
                      highlight: "Most Popular",
                      features: [
                        "24/7 Access",
                        "All Group Classes",
                        "1 Personal Trainer Session",
                      ],
                    ),
                    SizedBox(height: 16),
                    PlanCard(
                      title: "Silver Membership",
                      price: "\$59",
                      period: "per month",
                      features: ["24/7 Access", "Basic Group Classes"],
                    ),
                    SizedBox(height: 16),
                    PlanCard(
                      title: "10-Class Pass",
                      price: "\$150",
                      period: "one-time",
                      features: ["10 Gym Entries", "Valid for 3 months"],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//   Widget _searchBar() {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 14),
//       decoration: BoxDecoration(
//         color: const Color(0xFF1E1E1E),
//         borderRadius: BorderRadius.circular(14),
//       ),
//       child: const TextField(
//         style: TextStyle(color: Colors.white),
//         decoration: InputDecoration(
//           border: InputBorder.none,
//           hintText: "Search for plans",
//           hintStyle: TextStyle(color: Colors.grey),
//           icon: Icon(Icons.search, color: Colors.grey),
//         ),
//       ),
//     );
//   }
// }
