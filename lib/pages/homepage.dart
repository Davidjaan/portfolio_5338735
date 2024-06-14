import 'package:flutter/material.dart';
import 'package:portfolio_5338735/widgets/projects.dart';
import 'package:portfolio_5338735/widgets/start_desktop.dart';
import 'package:portfolio_5338735/widgets/navbar_desktop.dart';
import 'package:portfolio_5338735/widgets/navbar_responsive.dart';
import 'package:portfolio_5338735/widgets/sidebar.dart';
import 'package:portfolio_5338735/widgets/start_responsive.dart';
import 'package:portfolio_5338735/widgets/skills.dart'; // Import the Skills widget
import 'package:portfolio_5338735/widgets/skills_responsive.dart'; // Import the SkillsResponsive widget

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: _scaffoldKey,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        endDrawer: const Sidebar(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            if (constraints.maxWidth > 500)
              const NavbarDesktop()
            else
              NavbarResponsive(
                onMenuTap: () {
                  _scaffoldKey.currentState?.openEndDrawer();
                },
              ),
            // Start

            if (constraints.maxWidth > 500)
              const StartDesktop()
            else
              const StartResponsive(),

            // Skills
            if (constraints.maxWidth > 500)
              const Skills()
            else
              const SkillsResponsive(),

            // Projects
            const Projects(),
          ],
        ),
      );
    });
  }
}
