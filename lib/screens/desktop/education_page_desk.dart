import 'package:flutter/material.dart';

class EducationPageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SectionWidget(
              title: "EDUCATION",
              items: [
                EducationExperienceItem(
                  year: "2018 - 2022",
                  title: "High School Degree",
                  description:
                      "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                ),
                EducationExperienceItem(
                  year: "2018 - 2022",
                  title: "Bachelor's Degree",
                  description:
                      "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                ),
                EducationExperienceItem(
                  year: "2018 - 2022",
                  title: "Master Degree",
                  description:
                      "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                ),
              ],
            ),
          ),
          SizedBox(width: 32.0),
          Expanded(
            child: SectionWidget(
              title: "EXPERIENCE",
              items: [
                EducationExperienceItem(
                  year: "2018 - 2022",
                  title: "UI/UX Designer",
                  description:
                      "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                ),
                EducationExperienceItem(
                  year: "2018 - 2022",
                  title: "Full-Stack Developer",
                  description:
                      "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                ),
                EducationExperienceItem(
                  year: "2018 - 2022",
                  title: "Frontend Developer",
                  description:
                      "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                ),
              ],
            ),
          ),
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
        Text(
          title,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        SizedBox(height: 16.0),
        Column(
          children: items.asMap().entries.map((entry) {
            int idx = entry.key;
            return Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TimelineDot(),
                    Expanded(child: entry.value),
                  ],
                ),
                if (idx != items.length - 1) TimelineLine(),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}

class EducationExperienceItem extends StatelessWidget {
  final String year;
  final String title;
  final String description;

  EducationExperienceItem({
    required this.year,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 16.0, bottom: 24.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            year,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.green,
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
        ],
      ),
    );
  }
}

class TimelineDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox( // Ensure TimelineDot has a defined size
      width: 24,
      height: 24,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

class TimelineLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox( // Ensure TimelineLine has a defined size
      width: 2.0,
      height: 50.0,
      child: Container(
        width: double.infinity,
        color: Colors.green,
        margin: EdgeInsets.symmetric(horizontal: 11.0),
      ),
    );
  }
}
