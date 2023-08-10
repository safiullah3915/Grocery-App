import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:grocery_app/veiws/repeated/category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final bannerImages = [
    'assets/Allveges.jpeg',
    'assets/Allveges2.jpeg',
  ];
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    // Start the auto image slideshow
    _startImageSlider();
  }

  void _startImageSlider() {
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % bannerImages.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text('Home',
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 20,
            )),
        backgroundColor: const Color.fromARGB(255, 75, 185, 80),
        actions: const [
          CircleAvatar(
            backgroundColor: Color.fromARGB(255, 75, 185, 80),
            radius: 16,
            child: Icon(
              Icons.search,
              size: 23,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 75, 185, 80),
              radius: 16,
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: ListView(
          children: [
            CarouselSlider.builder(
              itemCount: bannerImages.length,
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              itemBuilder: (context, index, realIndex) {
                final image = bannerImages[index];
                return Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                  ),
                  Text('View All',
                      style: GoogleFonts.roboto(color: Colors.grey))
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Category(
                      categoryName: "Vegetables",
                      Imagepath: "assets/vegecat.png"),
                  Category(
                      categoryName: "Fruits", Imagepath: "assets/friuts.png"),
                  Category(
                      categoryName: "Frozen Food",
                      Imagepath: "assets/frozen.png")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Products',
                    style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                  ),
                  Text('View All',
                      style: GoogleFonts.roboto(color: Colors.grey))
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Category(
                      categoryName: "Vegetables",
                      Imagepath: "assets/vegecat.png"),
                  Category(
                      categoryName: "Fruits", Imagepath: "assets/friuts.png"),
                  Category(
                      categoryName: "Frozen Food",
                      Imagepath: "assets/frozen.png")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
