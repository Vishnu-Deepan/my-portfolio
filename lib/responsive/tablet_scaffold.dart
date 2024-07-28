import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../constant.dart';
import '../screens/tablet/contact_page_tab.dart';
import '../screens/tablet/dashboard_page_tab.dart';
import '../screens/tablet/education_page_tab.dart';
import '../screens/tablet/experience_page_tab.dart';
import '../screens/tablet/projects_page_tab.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackgroundColor,
      appBar: myAppBar,
      drawer: myDrawer,
      body: AnimatedBuilder(
        animation: controller,
        builder: (context, _) {
          switch (controller.selectedIndex) {
            case 0:
              return DashboardPageTablet();
            case 1:
              return ExperiencePageTablet();
            case 2:
              return EducationPageTablet();
            case 3:
              return ProjectsPageTablet();
            case 4:
              return ContactPageTablet();
            default:
              return DashboardPageTablet();
          }
        },
      ),

    );
  }
}
