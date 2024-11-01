import 'package:epic_ecommerce_app/widget/support_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(
          top: 40.0,
          left: 20.0,
          right: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "lib/assets/Watch2.png",
                height: 300,
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                "Login",
                style: AppWidget.semiboldTextFieldStyle().copyWith(
                  fontSize: 28,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                "Please enter the details below to continue",
                textAlign: TextAlign.center,
                style: AppWidget.lightTextFieldStyle(),
              ),
            ),
            const SizedBox(height: 20),
            Text("Email", style: AppWidget.semiboldTextFieldStyle()),
            const SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter your email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xFFfd6f3e)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xFFfd6f3e)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(color: Color(0xFFfd6f3e), width: 2),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text("Password", style: AppWidget.semiboldTextFieldStyle()),
            const SizedBox(height: 5),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xFFfd6f3e)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xFFfd6f3e)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(color: Color(0xFFfd6f3e), width: 2),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Navigate to forgot password page
                },
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Color(0xFFfd6f3e),
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFfd6f3e),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {
                    // Add login logic here
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account? ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to sign-up page
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFFfd6f3e),
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
