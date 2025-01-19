import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveSample extends StatelessWidget {
  const RiveSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: RiveAnimation.asset(
              'lib/rive/welcome.riv',
              artboard: 'welcome',
              animations: ['Timeline 1'],
            ),
          ),
        ],
      ),
    );
  }
}
