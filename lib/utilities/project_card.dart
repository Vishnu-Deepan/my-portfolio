import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ProjectCard extends StatefulWidget {
  final String image;
  final Color avatarForegroundColor;
  final IconData avatarIcon;
  final String titleText;
  final String content;
  final List<String> images;
  final VoidCallback onTap;

  const ProjectCard({
    super.key,
    required this.image,
    required this.avatarForegroundColor,
    required this.avatarIcon,
    required this.titleText,
    required this.content,
    required this.images,
    required this.onTap,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: GFCard(
        color: Colors.black38,
        titlePosition: GFPosition.start,
        image: Image.asset(
          widget.image,
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.3,
          fit: BoxFit.cover,
        ),
        showImage: true,
        title: GFListTile(
          listItemTextColor: Colors.white,
          avatar: GFAvatar(
            backgroundColor: Colors.transparent,
            foregroundColor: widget.avatarForegroundColor,
            child: Icon(widget.avatarIcon),
          ),
          titleText: widget.titleText,
        ),
      ),
    );
  }
}
