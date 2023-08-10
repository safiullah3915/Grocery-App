import 'package:flutter/material.dart';
//import 'package:grocery_app/veiws/auth_screen/intro_screen.dart';
import 'package:grocery_app/veiws/rest_views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 75, 185, 80)),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
