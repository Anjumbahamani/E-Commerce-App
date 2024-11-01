import 'package:epic_ecommerce_app/widget/support_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Productdetail extends StatefulWidget {
  const Productdetail({super.key});

  @override
  State<Productdetail> createState() => _ProductdetailState();
}

class _ProductdetailState extends State<Productdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfef5f1),
      body: Container(
        padding: EdgeInsets.only(
          top: 40.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 25),
              child: Stack(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Icon(Icons.arrow_back_ios_new_rounded)),
                ),
                Center(
                  child: Image.asset(
                    "lib/assets/headphone2.png",
                    height: 400,
                  ),
                ),
              ]),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Ensures alignment of text
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Headphone",
                            style: AppWidget.boldTextFieldStyle(),
                          ),
                          Spacer(),
                          Text(
                            "\$200",
                            style: AppWidget.seeAllTextStyle(),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Details",
                        style: AppWidget.semiboldTextFieldStyle(),
                        textAlign:
                            TextAlign.left, // Aligns 'Details' text to the left
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "soundcore by Anker Q20i Wireless Bluetooth Over-Ear Headphones with Hybrid Active Noise Cancelling, 40h Playtime in ANC Mode, Hi-Res Audio, Deep Bass, Personalization via App (Black)",
                        style: AppWidget.lightTextFieldStyle(),
                        // Aligns description to the left
                      ),
                      const SizedBox(height: 70.0),
                      Container(
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                          color: Color(0xFFfd6f3e),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(
                            "Buy Now",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                            ),
                          ),
                        ),
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
