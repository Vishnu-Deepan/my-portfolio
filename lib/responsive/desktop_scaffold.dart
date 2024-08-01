import 'package:flutter/material.dart';
import 'package:portfolio/screens/desktop/contact_page_desk.dart';
import 'package:portfolio/screens/desktop/dashboard_page_desk.dart';
import 'package:portfolio/screens/desktop/education_page_desk.dart';
import 'package:portfolio/screens/desktop/experience_page_desk.dart';
import 'package:portfolio/screens/desktop/projects_page_desk.dart';

import '../constant.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackgroundColor,
      body: Stack(
        children: [
          Image.asset(
            "assets/bg.jpg",
            fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Row(
            children: [
              //drawer
              myDrawer,
              //content
              AnimatedBuilder(
                animation: controller,
                builder: (context, _) {
                  switch (controller.selectedIndex) {
                    case 0:
                      return DashboardPageDesktop();
                    case 1:
                      return ExperiencePageDesktop();
                    case 2:
                      return EducationPageDesktop();
                    case 3:
                      return ProjectsPageDesktop();
                    case 4:
                      return ContactPageDesktop();
                    default:
                      return DashboardPageDesktop();
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
