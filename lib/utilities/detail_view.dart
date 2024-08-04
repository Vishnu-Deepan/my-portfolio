import 'package:pretty_animated_buttons/pretty_animated_buttons.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/project.dart';

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
                child:  SizedBox(
                  height: MediaQuery.of(context).size.height/1.5,
                  child: FanCarouselImageSlider.sliderType2(
                    imageRadius: 20,
                    userCanDrag: true,
                    imagesLink: project.detailImagePath,
                    isAssets: false,
                    sliderHeight: MediaQuery.of(context).size.height/2,
                    imageFitMode: BoxFit.contain,
                    expandedImageFitMode: BoxFit.contain,
                  ),
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