import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  const MyButton({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            style: TextStyle(color: Colors.white),
          ),
          Icon(
          Icons.arrow_forward,
          color: Colors.white,
          ),
        ],
      ),
    );
  }
}
