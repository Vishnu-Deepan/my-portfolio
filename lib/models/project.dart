import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

class Project {
  final String name;
  final String description;
  final String imagePath;
  final List<String> detailImagePath;
  final String github;

  const Project({
    required this.name,
    required this.imagePath,
    required this.detailImagePath,
    required this.description,
    required this.github,
  });
}


Map<String, Map<String, dynamic>> projects = {
  'project1': {
    'image': 'assets/projects/bug.jpg',
    'avatarForegroundColor': Colors.lightBlueAccent,
    'avatarIcon': SimpleIcons.react,
    'titleText': 'Bug Tracking Tool(Project Management)',
    'content': 'This is the project description for Project 3.',
    'images': <String>[
      "assets/bug/bug_tracking_tool pages (1)_pages-to-jpg-1.jpg",
      "assets/bug/bug_tracking_tool pages (1)_pages-to-jpg-2.jpg",
      "assets/bug/bug_tracking_tool pages (1)_pages-to-jpg-3.jpg",
      "assets/bug/bug_tracking_tool pages (1)_pages-to-jpg-4.jpg",
      "assets/bug/bug_tracking_tool pages (1)_pages-to-jpg-5.jpg",
      "assets/bug/bug_tracking_tool pages (1)_pages-to-jpg-6.jpg",
      "assets/bug/bug_tracking_tool pages (1)_pages-to-jpg-7.jpg",
      "assets/bug/bug_tracking_tool pages (1)_pages-to-jpg-8.jpg",
    ],
  },


  'project2': {
    'image': 'assets/projects/bug.jpg',
    'avatarForegroundColor': Colors.lightBlueAccent,
    'avatarIcon': SimpleIcons.react,
    'titleText': 'Bug Tracking Tool(Project Management)',
    'content': 'This is the project description for Project 2.',
    'images': <String>[],
  },
  'project3': {
    'image': 'assets/projects/alumni.jpg',
    'avatarForegroundColor': Colors.lightBlue,
    'avatarIcon': SimpleIcons.flutter,
    'titleText': 'Alumni Connect App',
    'content': 'This is the project description for Project 1.',
    'images': <String>[],
  },
  'project4': {
    'image': 'assets/projects/hotel.jpg',
    'avatarForegroundColor': Colors.lightBlueAccent,
    'avatarIcon': SimpleIcons.react,
    'titleText': 'Hotel Booking App',
    'content': 'This is the project description for Project 4.',
    'images': <String>[],
  },
  'project5': {
    'image': 'assets/projects/darkpattern.jpg',
    'avatarForegroundColor': Colors.yellow,
    'avatarIcon': SimpleIcons.python,
    'titleText': 'Dark Pattern Detector',
    'content': 'This is the project description for Project 5.',
    'images': <String>[],
  },
  'project6': {
    'image': 'assets/projects/grocery.jpg',
    'avatarForegroundColor': Colors.yellow,
    'avatarIcon': SimpleIcons.javascript,
    'titleText': 'Online Grocery Odering App',
    'content': 'This is the project description for Project 6.',
    'images': <String>[],
  },
};


