import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: non_constant_identifier_names
Widget Category({required String categoryName, required String Imagepath}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 5),
    height: 160,
    width: 140,
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        Image.asset(Imagepath),
        const SizedBox(
          height: 3,
        ),
        Text(
          categoryName,
          style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
