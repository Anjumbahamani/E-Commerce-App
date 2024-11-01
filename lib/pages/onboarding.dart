// import 'dart:math';

// import 'package:flutter/material.dart';

// class Onboarding extends StatefulWidget {
//   const Onboarding({super.key});

//   @override
//   State<Onboarding> createState() => _OnboardingState();
// }

// class _OnboardingState extends State<Onboarding> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: const Color(0xffecefe8),
//         body: Container(
//           margin: EdgeInsets.only(top: 50.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Text("Onboarding"),
//               // Image.asset(
//               //   "assets/headphone2.png",
//               //   width: 300,
//               //   height: 300,
//               // ),
//               const Image(
//                 width: 600,
//                 image: AssetImage("lib/assets/headphone.PNG"),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 20),
//                 child: Text(
//                   "Explore\nThe Best\nProducts",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 40,
//                       fontWeight: FontWeight.w900),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Container(
//                     margin: EdgeInsets.only(right: 20),
//                     padding: EdgeInsets.all(30),
//                     decoration: BoxDecoration(
//                         color: Colors.black, shape: BoxShape.circle),
//                     child: Text(
//                       "Next",
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20.0,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ));
//   }
// }

import 'dart:math';
import 'package:epic_ecommerce_app/pages/home.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );

    _animation = Tween<double>(begin: 1.0, end: 1.1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
    // Add navigation or any action you want to perform on button tap here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffecefe8),
      body: Container(
        margin: const EdgeInsets.only(top: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Image(
              width: 600,
              image: AssetImage("lib/assets/headphone.PNG"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Explore\nThe Best\nProducts",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTapDown: _onTapDown,
                  onTapUp: _onTapUp,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Homepage(),
                      ),
                    );
                  },
                  child: ScaleTransition(
                    scale: _animation,
                    child: Container(
                      margin: const EdgeInsets.only(right: 20),
                      padding: const EdgeInsets.all(30),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: const Text(
                        "Next",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
