import 'package:flutter/material.dart';

class StartResponsive extends StatelessWidget {
  const StartResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: screenHeight,
      constraints: const BoxConstraints(
        minHeight: 500,
      ),
      child: Column(
        children: [
          Image.asset(
            "assets/D.png",
            width: screenWidth,
          ),
          const Text(
            "Hallo, \nMein Name ist David",
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
