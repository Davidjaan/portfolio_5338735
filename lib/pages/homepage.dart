import 'package:flutter/material.dart';
import 'package:portfolio_5338735/widgets/about.dart';
import 'package:portfolio_5338735/widgets/projects.dart';
import 'package:portfolio_5338735/widgets/start_desktop.dart';
import 'package:portfolio_5338735/widgets/navbar_desktop.dart';
import 'package:portfolio_5338735/widgets/navbar_responsive.dart';
import 'package:portfolio_5338735/widgets/sidebar.dart';
import 'package:portfolio_5338735/widgets/start_responsive.dart';
import 'package:portfolio_5338735/widgets/skills.dart';
import 'package:portfolio_5338735/widgets/skills_responsive.dart';

// Define constants for colors
class AppColors {
  static const Color backgroundColor = Color.fromARGB(255, 255, 255, 255);
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isDesktop = constraints.maxWidth > 500;

        return Scaffold(
          key: _scaffoldKey,
          backgroundColor: AppColors.backgroundColor,
          endDrawer: const Sidebar(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // Navbar
              if (isDesktop)
                const NavbarDesktop()
              else
                NavbarResponsive(
                  onMenuTap: () {
                    _scaffoldKey.currentState?.openEndDrawer();
                  },
                ),

              // Start Section
              if (isDesktop)
                const StartDesktop()
              else
                const StartResponsive(),

              // About Section
              const About(),

              // Skills Section
              if (isDesktop)
                const Skills()
              else
                const SkillsResponsive(),

              // Projects Section
              const Projects(),
            ],
          ),
        );
      },
    );
  }
}
