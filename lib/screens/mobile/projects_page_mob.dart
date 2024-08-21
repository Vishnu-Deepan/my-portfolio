import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../models/project.dart';
import '../../utilities/project_card.dart';

class ProjectsPageMobile extends StatefulWidget {
  const ProjectsPageMobile({super.key});

  @override
  State<ProjectsPageMobile> createState() => _ProjectsPageMobileState();
}

class _ProjectsPageMobileState extends State<ProjectsPageMobile> {
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

  void _onImageTap(List<String> images, int initialIndex) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FullScreenImageViewer(
          images: images,
          initialIndex: initialIndex,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: _showDetails && _selectedProject != null
            ? _buildDetails(_selectedProject!)
            : Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Projects",
              style: GoogleFonts.abyssinicaSil(
                fontSize: 29,
                fontWeight: FontWeight.w800,
              ),
            ),
            Column(
              children: projects.keys.map((projectName) {
                return ProjectCard(
                  image: projects[projectName]!['image'],
                  avatarForegroundColor:
                  projects[projectName]!['avatarForegroundColor'],
                  avatarIcon: projects[projectName]!['avatarIcon'],
                  titleText: projects[projectName]!['titleText'],
                  content: projects[projectName]!['content'],
                  images:
                  List<String>.from(projects[projectName]!['images']),
                  onTap: () => _onProjectTap(projectName),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildDetails(Map<String, dynamic> project) {
    return Column(
      children: [
        SizedBox(
          height: 60,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: _onBack,
                  color: Colors.white,
                ),
                const SizedBox(width: 8),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Text(
                    project['titleText'],
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Image.asset(
              project['image'],
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Text(
              project['titleText'],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              project['content'],
              style: const TextStyle(color: Colors.white70),
            ),
            const SizedBox(height: 18),
            const Text(
              "Project Screenshots",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              children: project['images']
                  .asMap()
                  .entries
                  .map<Widget>((entry) => GestureDetector(
                onTap: () => _onImageTap(
                    List<String>.from(project['images']), entry.key),
                child: Image.asset(
                  entry.value,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ))
                  .toList(),
            ),
          ],
        ),
      ],
    );
  }
}

class FullScreenImageViewer extends StatelessWidget {
  final List<String> images;
  final int initialIndex;

  const FullScreenImageViewer(
      {Key? key, required this.images, required this.initialIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CarouselSlider.builder(
        itemCount: images.length,
        options: CarouselOptions(
          initialPage: initialIndex,
          enableInfiniteScroll: false,
          viewportFraction: 1.0,
          enlargeCenterPage: false,
        ),
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
            Container(
              child: PhotoView(
                imageProvider: AssetImage(images[itemIndex]),
                backgroundDecoration: BoxDecoration(color: Colors.black),
              ),
            ),
      ),
    );
  }
}