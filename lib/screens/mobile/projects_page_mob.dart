import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';
import '../../models/project.dart';
import '../../utilities/detail_view.dart';

class ProjectsPageMobile extends StatefulWidget {
  const ProjectsPageMobile({super.key});

  @override
  State<ProjectsPageMobile> createState() => _ProjectsPageMobileState();
}

class _ProjectsPageMobileState extends State<ProjectsPageMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
    // final projects = projects.values.toList();
    // return VerticalCardPager(
    //   textStyle: GoogleFonts.robotoCondensed(
    //     fontSize: 12,
    //     fontWeight: FontWeight.w700,
    //     color: Colors.white,
    //   ),
    //   titles: projects.map((e) => e.name).toList(),
    //   images: projects
    //       .map((e) => Hero(
    //             tag: e.name,
    //             child: ClipRRect(
    //               borderRadius: BorderRadius.circular(20.0),
    //               child: Image.asset(
    //                 e.imagePath,
    //                 fit: BoxFit.cover,
    //               ),
    //             ),
    //           ))
    //       .toList(),
    //   onPageChanged: (page) {},
    //   onSelectedItem: (index) {
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //           builder: (context) => DetailView(
    //                 project: projects[index],
    //               )),
    //     );
    //   },
    // );
  }
}

