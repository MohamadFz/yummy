import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yummy/components/button.dart';
import 'package:yummy/components/food_tile.dart';
import 'package:yummy/models/food.dart';
import 'package:yummy/theme/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List foodmenu = [
    Food(
        name: "Hot Dog",
        price: "20.00",
        imagePath: "lib/images/hotdog.png",
        rating: "4.0"),
    Food(
        name: "Kebab",
        price: "12.00",
        imagePath: "lib/images/kebab.png",
        rating: "4.5"),
    Food(
        name: "Pizza",
        price: "25.00",
        imagePath: "lib/images/pizza.png",
        rating: "5.0")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe1e1e1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.menu,
          color: Colors.black54,
        ),
        title: Text(
          "Pizza Shop",
          style: GoogleFonts.ubuntu(color: Colors.black54),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // promo banner
          Container(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(15)),
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Try the new Tacos',
                      style: GoogleFonts.ubuntu(
                          fontSize: 20, color: Colors.black87),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyButton(text: 'Let\'s Go', onTap: () {}),
                  ],
                ),
                Image.asset(
                  'lib/images/taco.png',
                  height: 110,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Search here.."),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // menu list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Food Menu',
              style: GoogleFonts.ubuntu(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black87),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodmenu.length,
                  itemBuilder: (context, index) => FoodTile(
                        food: foodmenu[index],
                      )))
          // popular food
        ],
      ),
    );
  }
}
