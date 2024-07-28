import 'package:flutter/material.dart';

class DashboardPageTablet extends StatefulWidget {
  const DashboardPageTablet({super.key});

  @override
  State<DashboardPageTablet> createState() => _DashboardPageTabletState();
}

class _DashboardPageTabletState extends State<DashboardPageTablet> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Dashboard",
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
