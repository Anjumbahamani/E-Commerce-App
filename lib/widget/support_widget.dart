import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppWidget {
  static TextStyle boldTextFieldStyle() {
    return GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle lightTextFieldStyle() {
    return GoogleFonts.poppins(
      color: Colors.black54,
      fontSize: 20.0,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle semiboldTextFieldStyle() {
    return GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.w800,
    );
  }

  static TextStyle seeAllTextStyle() {
    return GoogleFonts.poppins(
      color: Color(0xFFfd6f3e),
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    );
  }
}
