import 'package:flutter/material.dart';

class ProjectsPageTablet extends StatefulWidget {
  const ProjectsPageTablet({super.key});

  @override
  State<ProjectsPageTablet> createState() => _ProjectsPageTabletState();
}

class _ProjectsPageTabletState extends State<ProjectsPageTablet> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Projects",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
