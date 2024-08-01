import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:overlapped_carousel/overlapped_carousel.dart';
import 'package:pretty_animated_buttons/pretty_animated_buttons.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';
import '../../models/project.dart';
import '../../utilities/fullscreen_image.dart';

class ProjectsPageMobile extends StatefulWidget {
  const ProjectsPageMobile({super.key});

  @override
  State<ProjectsPageMobile> createState() => _ProjectsPageMobileState();
}

class _ProjectsPageMobileState extends State<ProjectsPageMobile> {
  @override
  Widget build(BuildContext context) {
    final projects = projectsMap.values.toList();
    return VerticalCardPager(
      textStyle: GoogleFonts.robotoCondensed(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      titles: projects.map((e) => e.name).toList(),
      images: projects
          .map((e) => Hero(
                tag: e.name,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    e.imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ))
          .toList(),
      onPageChanged: (page) {},
      onSelectedItem: (index) {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailView(
                    project: projects[index],
                  )),
        );
      },
    );
  }
}

class DetailView extends StatelessWidget {
  final Project project;

  const DetailView({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xff030a15),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text(
          project.name,
          style: GoogleFonts.robotoCondensed(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff030000),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  width: screenWidth*4,
                  height: screenHeight * 0.3,
                  child: OverlappedCarousel(
                    widgets: project.detailImagePath, //List of widgets
                    currentIndex: 2,
                    onClicked: (index) {
                      final imagePaths = project.detailImagePath
                          .map((widget) => (widget as ClipRRect).child as Image)
                          .map((image) => (image.image as AssetImage).assetName)
                          .toList();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FullScreenImageGallery(
                            images: imagePaths,
                            initialIndex: index,
                          ),
                        ),
                      );
                    },
                    // To obscure or blur cards not in focus use the obscure parameter.
                    obscure: 0.1,
                    // To control skew angle
                    skewAngle: 0.25,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                project.techStack,
                style: GoogleFonts.robotoCondensed(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffd42c86),
                ),
              ),
              const SizedBox(height: 8),
              Divider(color: Color(0xffd42c86)),
              const SizedBox(height: 8),
              Text(
                project.description,
                style: GoogleFonts.robotoCondensed(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              if (project.github.isNotEmpty)
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Center(
                    child: PrettyShadowButton(
                      foregroundColor: Colors.white,
                      label: "Open Github",
                      onPressed: () {
                        launchUrl(Uri.parse(project.github));
                      },
                      icon: SimpleIcons.github,
                      shadowColor: Color(0xffd42c86),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
