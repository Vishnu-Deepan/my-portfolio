import 'package:flutter/material.dart';

class ExperiencePageDesktop extends StatefulWidget {
  const ExperiencePageDesktop({super.key});

  @override
  State<ExperiencePageDesktop> createState() => _ExperiencePageDesktopState();
}

class _ExperiencePageDesktopState extends State<ExperiencePageDesktop> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Experience",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
