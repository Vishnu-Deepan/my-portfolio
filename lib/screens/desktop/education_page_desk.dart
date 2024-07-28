import 'package:flutter/material.dart';

class EducationPageDesktop extends StatefulWidget {
  const EducationPageDesktop({super.key});

  @override
  State<EducationPageDesktop> createState() => _EducationPageDesktopState();
}

class _EducationPageDesktopState extends State<EducationPageDesktop> {
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
