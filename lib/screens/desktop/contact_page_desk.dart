import 'package:flutter/material.dart';

class ContactPageDesktop extends StatefulWidget {
  const ContactPageDesktop({super.key});

  @override
  State<ContactPageDesktop> createState() => _ContactPageDesktopState();
}

class _ContactPageDesktopState extends State<ContactPageDesktop> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Contact",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
