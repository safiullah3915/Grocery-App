//import 'package:grocery_app/consts/library.dart';
import 'package:grocery_app/firebase_services/splash_services.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices = SplashServices();
  @override
  // void initState() {
  //   super.initState();
  //   splashServices.isLogin(context);
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/backgro1.png'))),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   color: Colors.red,
            //   decoration: const BoxDecoration(
            //       //color: Colors.red,
            //       image: DecorationImage(
            //           fit: BoxFit.cover,
            //           image: AssetImage('assets/image 2.png'))),
            // )
          ],
        ),
      ),
    );
  }
}
