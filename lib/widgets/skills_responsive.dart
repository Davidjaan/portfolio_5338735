import 'package:flutter/material.dart';

class SkillsResponsive extends StatelessWidget {
  const SkillsResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      {'name': 'Java', 'image': 'assets/java.png'},
      {'name': 'SQL', 'image': 'assets/sql.png'},
      {'name': 'SAP', 'image': 'assets/sap.png'},
      {'name': 'microsoft', 'image': 'assets/microsoft.png'},
    ];

    return Container(
      padding: const EdgeInsets.all(16.0),
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Center(
        child: Card(
          color: const Color.fromARGB(255, 63, 72, 81),
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'My Skills',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                const SizedBox(height: 20),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 2.0,
                    mainAxisSpacing: 2.0,
                  ),
                  itemCount: skills.length,
                  itemBuilder: (context, index) {
                    final skill = skills[index];
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          skill['image']!,
                          height: 50,
                          width: 50,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          skill['name']!,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
