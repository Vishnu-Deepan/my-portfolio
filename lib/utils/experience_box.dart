import 'package:flutter/material.dart';

class ExperienceBox extends StatefulWidget {
  const ExperienceBox({super.key});

  @override
  State<ExperienceBox> createState() => _ExperienceBoxState();
}

class _ExperienceBoxState extends State<ExperienceBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        height: 80,
        color: Colors.green,
      ),
    );;
  }
}
