//import 'package:grocery_app/consts/library.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/veiws/mobile_verfication/phone.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // The Picture of Avacado
          Padding(
            padding: const EdgeInsets.only(
                left: 80, right: 80, bottom: 40, top: 120),
            child: Image.asset('assets/avocado.png'),
          ),

          // The text
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text('Experience the joy of doorstep grocery delivery',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold, fontSize: 30)),
          ),

          // the text
          Text(
            'Fresh delights directly to your home',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          const Spacer(),

          // Get Started Button
          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyPhone())),
            child: Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 75, 185, 80),
                  borderRadius: BorderRadius.circular(30)),
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Text('Get Started',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600)),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
