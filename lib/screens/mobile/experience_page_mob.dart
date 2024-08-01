import 'package:flutter/material.dart';

class ExperiencePageMobile extends StatefulWidget {
  const ExperiencePageMobile({super.key});

  @override
  State<ExperiencePageMobile> createState() => _ExperiencePageMobileState();
}

class _ExperiencePageMobileState extends State<ExperiencePageMobile> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Experience",
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
