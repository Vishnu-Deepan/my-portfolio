import 'package:flutter/material.dart';

class ProjectsPageDesktop extends StatefulWidget {
  const ProjectsPageDesktop({super.key});

  @override
  State<ProjectsPageDesktop> createState() => _ProjectsPageDesktopState();
}

class _ProjectsPageDesktopState extends State<ProjectsPageDesktop> {
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
