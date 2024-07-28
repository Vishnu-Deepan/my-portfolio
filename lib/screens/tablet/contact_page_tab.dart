import 'package:flutter/material.dart';

class ContactPageTablet extends StatefulWidget {
  const ContactPageTablet({super.key});

  @override
  State<ContactPageTablet> createState() => _ContactPageTabletState();
}

class _ContactPageTabletState extends State<ContactPageTablet> {
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
