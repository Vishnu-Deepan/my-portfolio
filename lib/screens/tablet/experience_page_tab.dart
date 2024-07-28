import 'package:flutter/material.dart';

class ExperiencePageTablet extends StatefulWidget {
  const ExperiencePageTablet({super.key});

  @override
  State<ExperiencePageTablet> createState() => _ExperiencePageTabletState();
}

class _ExperiencePageTabletState extends State<ExperiencePageTablet> {
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
