import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const MyButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffdcba5d),
      borderRadius: BorderRadius.circular(40)
        ),
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                text,
              style: GoogleFonts.ubuntu(
                color: Colors.white,
              ),
            ),
            Icon(
            Icons.arrow_forward,
            color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
