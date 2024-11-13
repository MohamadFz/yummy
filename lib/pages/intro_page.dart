import 'package:flutter/material.dart';
import 'package:yummy/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color(0xffddc88c),
      body: Padding(
          padding: const EdgeInsets.all(25.0),
       child:  Column(
         crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      const SizedBox(height: 25,),
      const Text("Pizza Shop",
        style: TextStyle(
          fontSize: 25,
        ),
      ),
        const SizedBox(height: 25,),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Image.asset('lib/images/pizza2.png'),
        ),
        const SizedBox(height: 25,),
        const Text("Love at First Slice",
        style: TextStyle(
            fontSize: 30),
        ),
        const SizedBox(height: 10,),
        const Text("An old-school pizzeria using quality ingredients with most items cooked from scratch.",
          style: TextStyle(
              fontSize: 20,
          height: 2,
          color: Color(0xff404040),
          ),
        ),
        const SizedBox(height: 25,),
        MyButton(
            text: "Get Started",
            onTap:() {
              //Go to menu page
              Navigator.pushNamed(context, '/menupage');
            },

        )
      ],
       ),
      ),
    );
  }
}