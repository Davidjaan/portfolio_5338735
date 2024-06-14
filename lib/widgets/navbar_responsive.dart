import 'package:flutter/material.dart';
import 'package:portfolio_5338735/widgets/navbar_logo.dart';

class NavbarResponsive extends StatelessWidget {
  const NavbarResponsive({super.key, this.onMenuTap});
  final VoidCallback? onMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      child: Row(
        children: [
          const NavbarLogo(),
          const Spacer(),
          IconButton(onPressed: onMenuTap, icon: const Icon(Icons.menu))
        ],
      ),
    );
  }
}
