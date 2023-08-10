import 'dart:async';
// import 'dart:js';
import 'package:flutter/material.dart';
//import 'package:grocery_app/consts/library.dart';
import 'package:grocery_app/veiws/auth_screen/signIn_auth.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    Timer(
        const Duration(seconds: 6),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => const SignIn())));
  }
}
