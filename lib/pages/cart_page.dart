import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:yummy/components/button.dart';
import 'package:yummy/pages/shop.dart';
import 'package:yummy/theme/colors.dart';

import '../models/food.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeFromCart(Food food, BuildContext context) {
    //get access to the shop
    final shop = context.read<Shop>();
    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "My Cart",
            style: GoogleFonts.ubuntu(),
          ),
          backgroundColor: primaryColor,
        ),
        body: Column(
          children: [
            //Customer Cart
            Expanded(
              child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) {
                  //get food from cart
                  final Food food = value.cart[index];
                  //get food name
                  final String foodname = food.name;
                  //get food price
                  final String foodprice = food.price;
                  //return list tile
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.orange[100],
                        borderRadius: BorderRadius.circular(8)),
                    margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: ListTile(
                      title: Text(
                        foodname,
                        style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(foodprice),
                      trailing: IconButton(
                          onPressed: () => removeFromCart(food, context),
                          icon: Icon(Icons.delete)),
                    ),
                  );
                },
              ),
            ),
            //Pay Button
            Padding(
              padding: EdgeInsets.all(25),
              child: MyButton(text: 'Pay Now', onTap: () {}),
            )
          ],
        ),
      ),
    );
  }
}
