import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yummy/components/button.dart';
import 'package:yummy/theme/colors.dart';

import '../models/food.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;
  const FoodDetailsPage({super.key, required this.food});

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  int quantityCount = 0;

  void decrementQuantity() {
    if (quantityCount > 0) {
      setState(() {
        quantityCount--;
      });
    }
  }

  void incrementQuantity() {
    setState(() {
      quantityCount++;
    });
  }

  void addToCart() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView(
                children: [
                  //image
                  Image.asset(
                    widget.food.imagePath,
                    height: 200,
                  ),
                  SizedBox(height: 25),
                  //rating
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                      ),
                      SizedBox(width: 5),
                      Text(
                        widget.food.rating,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  //food name
                  Text(
                    widget.food.name,
                    style: GoogleFonts.ubuntu(
                        fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 25),
                  //description
                  Text(
                    "Description",
                    style: GoogleFonts.ubuntu(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "When a craving hits for those two all-beef patties it’s time to stop thinking about what’s on it and take a bite. It contains no artificial flavors, preservatives, or added colors from artificial sources. ",
                    style: GoogleFonts.ubuntu(
                        color: Colors.grey[600], fontSize: 14, height: 2),
                  )
                ],
              ),
            ),
          ),
          Container(
            color: primaryColor,
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Price
                    Text(
                      "\$" + widget.food.price,
                      style: GoogleFonts.ubuntu(fontSize: 18),
                    ),
                    //quantity
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.orange[300],
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                              onPressed: decrementQuantity,
                              icon: Icon(Icons.remove)),
                        ),
                        SizedBox(
                          width: 40,
                          child: Center(
                            child: Text(
                              quantityCount.toString(),
                              style: GoogleFonts.ubuntu(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.orange[300],
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                              onPressed: incrementQuantity,
                              icon: Icon(Icons.add)),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 25),
                MyButton(text: "Add to Cart", onTap: addToCart),
              ],
            ),
          )
        ],
      ),
    );
  }
}
