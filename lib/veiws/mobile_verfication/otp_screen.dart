import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/veiws/mobile_verfication/phone.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  // OTP Pin Box Theme
  final defaultPinTheme = PinTheme(
    width: 64,
    height: 68,
    textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromARGB(255, 0, 0, 0),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: const Color.fromARGB(255, 75, 185, 80)),
      borderRadius: BorderRadius.circular(20),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Arrow_back button
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10, bottom: 4),
          child: RawMaterialButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyPhone()));
            },
            elevation: 2.0,
            fillColor: Colors.white,
            padding: const EdgeInsets.all(10.0),
            shape: const CircleBorder(),
            child: const Icon(
              Icons.arrow_back,
              size: 18.0,
            ),
          ),
        ),
      ),
      body: Container(
        //color: Colors.red,
        margin: const EdgeInsets.only(left: 25, right: 25, bottom: 29),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Phone Image
              Image.asset(
                'assets/phoneOtp.png',
              ),
              const SizedBox(
                height: 15,
              ),

              // Phone Verification Text
              Text(
                'Phone Verification',
                style: GoogleFonts.roboto(
                    fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),

              //Phone Description Text
              Text(
                'We need to register your phone before getting started !',
                style: GoogleFonts.roboto(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 25,
              ),

              // Otp Box
              Pinput(
                defaultPinTheme: defaultPinTheme,
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
              ),

              const SizedBox(
                height: 30,
              ),

              // Send OTP Button
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OtpScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 75, 185, 80)),
                    child: Text(
                      'Verify OTP',
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    )),
              ),
              const SizedBox(
                height: 15,
              ),

              // Text and Request again Button
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Didn't recieve the code?",
                    style: GoogleFonts.roboto(),
                  ),
                  InkWell(
                      onTap: () {},
                      child: Text(
                        'Request Again',
                        style: GoogleFonts.roboto(
                            color: const Color.fromARGB(255, 50, 132, 53),
                            fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
