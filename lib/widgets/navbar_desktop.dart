import 'package:flutter/material.dart';
import 'package:portfolio_5338735/widgets/navbar_logo.dart';

// Define constants for colors
class AppColors {
  static const Color backgroundColor = Color.fromARGB(255, 255, 255, 255);
  static const Color textColor = Color.fromARGB(255, 0, 0, 0);
}

class NavbarDesktop extends StatelessWidget {
  const NavbarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      color: AppColors.backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const NavbarLogo(),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Home',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: AppColors.textColor,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'About me',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: AppColors.textColor,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Skills',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: AppColors.textColor,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Projects',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: AppColors.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
