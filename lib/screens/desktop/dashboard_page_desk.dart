import 'package:flutter/material.dart';

class DashboardPageDesktop extends StatefulWidget {
  const DashboardPageDesktop({super.key});

  @override
  State<DashboardPageDesktop> createState() => _DashboardPageDesktopState();
}

class _DashboardPageDesktopState extends State<DashboardPageDesktop> {
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
