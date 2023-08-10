import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/veiws/mobile_verfication/otp_screen.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({super.key});

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController country = TextEditingController();

  @override
  void initState() {
    super.initState();
    country.text = "+92";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
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

              // Phone Veri Text
              Text(
                'Account Registration',
                style: GoogleFonts.roboto(
                    fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),

              //Phone Des Text
              Text(
                'We need to register your phone before getting started !',
                style: GoogleFonts.roboto(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 25,
              ),

              // Text Field
              Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  border: Border.all(width: 1, color: Colors.green),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    // Country Code
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: country,
                        cursorColor: Colors.green,
                        keyboardType: TextInputType.number,
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    const Text(
                      '|',
                      style: TextStyle(fontSize: 33, color: Colors.green),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    //Phone Number text
                    const Expanded(
                        child: TextField(
                      cursorColor: Colors.green,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Phone Number'),
                    ))
                  ],
                ),
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
                      'Send OTP',
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),

              //Divider Line and OR Text
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      indent: 60.0,
                      endIndent: 20.0,
                      thickness: 1,
                    ),
                  ),
                  Text(
                    "Or",
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  Expanded(
                    child: Divider(
                      indent: 20.0,
                      endIndent: 60.0,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              // Login Text Button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an Account?',
                    style: GoogleFonts.roboto(),
                  ),
                  InkWell(
                      onTap: () {},
                      child: Text(
                        'Login',
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
