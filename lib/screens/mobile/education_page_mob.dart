import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EducationPageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          // Education Section
          SectionWidget(
            title: "EDUCATION",
            items: [
              EducationExperienceItem(
                year: "2021 - 2025",
                title: "Bachelor of Technology (B. Tech.)",
                description:
                    "Kamaraj College of Engineering and Technology, Madurai",
                percentage: '75.3%',
              ),
              EducationExperienceItem(
                year: "2018 - 2022",
                title: "Bachelor's Degree",
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                percentage: '85.4%',
              ),
              EducationExperienceItem(
                year: "2018 - 2022",
                title: "Master Degree",
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                percentage: '77.6%',

              ),
            ],
          ),
          // SizedBox(height: 24.0),
          // // Experience Section
          // SectionWidget(
          //   title: "EXPERIENCE",
          //   items: [
          //     EducationExperienceItem(
          //       year: "2018 - 2022",
          //       title: "UI/UX Designer",
          //       description:
          //           "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          //     ),
          //     EducationExperienceItem(
          //       year: "2018 - 2022",
          //       title: "Full-Stack Developer",
          //       description:
          //           "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          //     ),
          //     EducationExperienceItem(
          //       year: "2018 - 2022",
          //       title: "Frontend Developer",
          //       description:
          //           "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}

class SectionWidget extends StatelessWidget {
  final String title;
  final List<EducationExperienceItem> items;

  SectionWidget({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            title,
            style: GoogleFonts.aleo(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 16.0),
        ...items.map((item) => Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: item,
            )),
      ],
    );
  }
}

class EducationExperienceItem extends StatelessWidget {
  final String year;
  final String title;
  final String description;
  final String percentage;

  EducationExperienceItem({
    required this.year,
    required this.title,
    required this.description,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            year,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            description,
            style: TextStyle(fontSize: 16.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(percentage,style: GoogleFonts.abel(
                fontWeight : FontWeight.w800,
              ),),
            ],
          ),
        ],
      ),
    );
  }
}
