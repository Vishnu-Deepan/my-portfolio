import 'package:flutter/material.dart';

class ProjectBox extends StatefulWidget {
  const ProjectBox({super.key});

  @override
  State<ProjectBox> createState() => _ProjectBoxState();
}

class _ProjectBoxState extends State<ProjectBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        color: Colors.blue,
      ),
    );;
  }
}
