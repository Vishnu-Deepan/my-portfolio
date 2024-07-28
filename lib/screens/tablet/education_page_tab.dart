import 'package:flutter/material.dart';

class EducationPageTablet extends StatefulWidget {
  const EducationPageTablet({super.key});

  @override
  State<EducationPageTablet> createState() => _EducationPageTabletState();
}

class _EducationPageTabletState extends State<EducationPageTablet> {
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
