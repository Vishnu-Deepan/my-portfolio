import 'package:flutter/material.dart';

class EducationPageMobile extends StatefulWidget {
  const EducationPageMobile({super.key});

  @override
  State<EducationPageMobile> createState() => _EducationPageMobileState();
}

class _EducationPageMobileState extends State<EducationPageMobile> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Education",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
