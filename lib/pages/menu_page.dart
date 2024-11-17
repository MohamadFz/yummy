import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yummy/components/button.dart';
import 'package:yummy/theme/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
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
        title: Text("Pizza Shop",
        style: GoogleFonts.ubuntu(color: Colors.black54),
        ),
      ),
      body: Column(
        children: [
          // promo banner
          Container(
            decoration: BoxDecoration(color: primaryColor, borderRadius: BorderRadius.circular(15)),
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Try the new Tacos',
                    style: GoogleFonts.ubuntu(
                      fontSize: 20,
                      color: Colors.black87
                    ),),
                    const SizedBox(height: 20,),
                    MyButton(text: 'Let\'s Go', onTap: (){}),
                  ],
                ),
                Image.asset('lib/images/taco.png', height: 110,)
              ],
            ),
          )

          // search bar

          // menu list

          // popular food

        ],
      ),
    );
  }
}
