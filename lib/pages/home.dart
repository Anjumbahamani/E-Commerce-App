import 'package:epic_ecommerce_app/widget/support_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final Map<String, String> categories = {
    "Headphone": "lib/assets/headphone_icon.png",
    "Laptop": "lib/assets/laptop.png",
    "Watch": "lib/assets/watch.png",
    "TV": "lib/assets/TV.png",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 235, 235),
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hey, Saifuddin",
                      style: AppWidget.boldTextFieldStyle(),
                    ),
                    Text(
                      "Good Morning!",
                      style: AppWidget.lightTextFieldStyle(),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: const Image(
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                    image: AssetImage("lib/assets/boy.jpg"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search Products",
                  hintStyle: AppWidget.lightTextFieldStyle(),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: AppWidget.semiboldTextFieldStyle(),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    color: Color(0xFFfd6f3e),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 80,
              child: ListView.builder(
                itemCount:
                    categories.length + 1, // Adding one for the "All" button
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    // Display the "All" button as the first item
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // Define your onPressed functionality for "All"
                          print("All categories selected");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFfd6f3e),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        ),
                        child: Text(
                          "All",
                          style: GoogleFonts.poppins(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  } else {
                    // Display each category as usual
                    final category = categories.entries.elementAt(index - 1);
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: CategoryTile(
                          image: category.value, title: category.key),
                    );
                  }
                },
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "All Products",
                  style: AppWidget.semiboldTextFieldStyle(),
                ),
                const Spacer(),
                Text(
                  "See all",
                  style: TextStyle(
                    color: Color(0xFFfd6f3e),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  ProductTile(
                    image: "lib/assets/headphone2.png",
                    name: "Headphone",
                    price: "\$100",
                  ),
                  const SizedBox(width: 20),
                  ProductTile(
                    image: "lib/assets/watch2.png",
                    name: "Watch",
                    price: "\$2000",
                  ),
                  const SizedBox(width: 20),
                  ProductTile(
                    image: "lib/assets/laptop2.png",
                    name: "Laptop",
                    price: "\$3000",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String image;
  const CategoryTile({required this.image, required String title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      height: 90,
      width: 90,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(image),
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  const ProductTile({
    required this.image,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      width: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, width: 150, height: 150),
          const SizedBox(height: 10),
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Text(
                price,
                style: TextStyle(
                  color: Color(0xFFfd6f3e),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                ),
              ),
              const SizedBox(width: 5),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFfd6f3e),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
