import 'package:flutter/material.dart';
import 'package:portfolio/constant.dart';
import 'package:portfolio/screens/desktop/projects_page_desk.dart';
import '../screens/mobile/contact_page_mob.dart';
import '../screens/mobile/dashboard_page_mob.dart';
import '../screens/mobile/education_page_mob.dart';
import '../screens/mobile/experience_page_mob.dart';
import '../screens/mobile/projects_page_mob.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: myBackgroundColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color(0x1000000),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: myDrawer,
      body: Stack(
        children: [
          Image.asset(
            "assets/bg.jpg",
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,

          ),
          AnimatedBuilder(
            animation: controller,
            builder: (context, _) {
              switch (controller.selectedIndex) {
                case 0:
                  return DashboardPageMobile();
                case 1:
                  return ExperiencePageMobile();
                case 2:
                  return EducationPageMobile();
                case 3:
                  return ProjectsPageMobile();
                case 4:
                  return ContactPageMobile();
                default:
                  return DashboardPageMobile();
              }
            },
          ),
        ],
      ),
    );
  }
}
