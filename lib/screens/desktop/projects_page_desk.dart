import 'package:flutter/material.dart';
import 'package:portfolio/utilities/project_card.dart';

import '../../models/project.dart';

class ProjectsPageDesktop extends StatefulWidget {
  const ProjectsPageDesktop({super.key});

  @override
  State<ProjectsPageDesktop> createState() => _ProjectsPageDesktopState();
}

class _ProjectsPageDesktopState extends State<ProjectsPageDesktop> {
  bool _showDetails = false;
  Map<String, dynamic>? _selectedProject;

  void _onProjectTap(String projectName) {
    setState(() {
      _selectedProject = projects[projectName];
      _showDetails = true;
    });
  }

  void _onBack() {
    setState(() {
      _showDetails = false;
      _selectedProject = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(38.0),
          child: _showDetails && _selectedProject != null
              ? _buildDetails(_selectedProject!)
              : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Column(
                  children: [
                    ProjectCard(
                      image: projects['project1']!['image'],
                      avatarForegroundColor: projects['project1']!['avatarForegroundColor'],
                      avatarIcon: projects['project1']!['avatarIcon'],
                      titleText: projects['project1']!['titleText'],
                      content: projects['project1']!['content'],
                      images: List<String>.from(projects['project1']!['images']),
                      onTap: () => _onProjectTap('project1'),
                    ),
                    ProjectCard(
                      image: projects['project2']!['image'],
                      avatarForegroundColor: projects['project2']!['avatarForegroundColor'],
                      avatarIcon: projects['project2']!['avatarIcon'],
                      titleText: projects['project2']!['titleText'],
                      content: projects['project2']!['content'],
                      images: List<String>.from(projects['project2']!['images']),
                      onTap: () => _onProjectTap('project2'),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  children: [
                    ProjectCard(
                      image: projects['project3']!['image'],
                      avatarForegroundColor: projects['project3']!['avatarForegroundColor'],
                      avatarIcon: projects['project3']!['avatarIcon'],
                      titleText: projects['project3']!['titleText'],
                      content: projects['project3']!['content'],
                      images: List<String>.from(projects['project3']!['images']),
                      onTap: () => _onProjectTap('project3'),
                    ),
                    ProjectCard(
                      image: projects['project4']!['image'],
                      avatarForegroundColor: projects['project4']!['avatarForegroundColor'],
                      avatarIcon: projects['project4']!['avatarIcon'],
                      titleText: projects['project4']!['titleText'],
                      content: projects['project4']!['content'],
                      images: List<String>.from(projects['project4']!['images']),
                      onTap: () => _onProjectTap('project4'),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  children: [
                    ProjectCard(
                      image: projects['project5']!['image'],
                      avatarForegroundColor: projects['project5']!['avatarForegroundColor'],
                      avatarIcon: projects['project5']!['avatarIcon'],
                      titleText: projects['project5']!['titleText'],
                      content: projects['project5']!['content'],
                      images: List<String>.from(projects['project5']!['images']),
                      onTap: () => _onProjectTap('project5'),
                    ),
                    ProjectCard(
                      image: projects['project6']!['image'],
                      avatarForegroundColor: projects['project6']!['avatarForegroundColor'],
                      avatarIcon: projects['project6']!['avatarIcon'],
                      titleText: projects['project6']!['titleText'],
                      content: projects['project6']!['content'],
                      images: List<String>.from(projects['project6']!['images']),
                      onTap: () => _onProjectTap('project6'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetails(Map<String, dynamic> project) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment

          .start,
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: _onBack,
        ),
        Image.asset(
          project['image'],
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 16),
        Text(
          project['titleText'],
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(project['content']),
        SizedBox(height: 16),
        Wrap(
          spacing: 8,
          children: project['images']
              .map<Widget>((image) => Image.asset(
            image,
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ))
              .toList(),
        ),
      ],
    );
  }
}