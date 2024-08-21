import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPageMobile extends StatefulWidget {
  const ContactPageMobile({super.key});

  @override
  State<ContactPageMobile> createState() => _ContactPageMobileState();
}

class _ContactPageMobileState extends State<ContactPageMobile> {
  // Function to handle URL launch
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not launch $url')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 40),
          Center(
            child: Text(
              "Contact",
              style: GoogleFonts.cabinCondensed(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Phone
          InkWell(
            onTap: () {
              _launchURL('tel:+919994376845');
            },
            child: SizedBox(
              width: double.infinity,
              height: 150,
              child: Card(
                color: Colors.green[300],
                margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(Icons.phone, color: Colors.white, size: 40),
                      const SizedBox(width: 20),
                      Text(
                        'Phone',
                        style: GoogleFonts.aBeeZee(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Email
          InkWell(
            onTap: () {
              _launchURL('mailto:vishnudeepanp@gmai.com');
            },
            child: SizedBox(
              width: double.infinity,
              height: 150,
              child: Card(
                color: Colors.red[300],
                margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(Icons.email, color: Colors.white, size: 40),
                      const SizedBox(width: 20),
                      Text(
                        'Email',
                        style: GoogleFonts.aBeeZee(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // LinkedIn
          InkWell(
            onTap: () {
              _launchURL('https://www.linkedin.com/in/vishnu-deepan-p/');
            },
            child: SizedBox(
              width: double.infinity,
              height: 150,
              child: Card(
                color: Colors.blue[300],
                margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(Icons.business, color: Colors.white, size: 40),
                      const SizedBox(width: 20),
                      Text(
                        'LinkedIn',
                        style: GoogleFonts.aBeeZee(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Github
          InkWell(
            onTap: () {
              _launchURL('https://github.com/Vishnu-Deepan');
            },
            child: SizedBox(
              width: double.infinity,
              height: 150,
              child: Card(
                color: const Color(0xff2b3137),
                margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(Icons.code, color: Colors.white, size: 40),
                      const SizedBox(width: 20),
                      Text(
                        'Github',
                        style: GoogleFonts.aBeeZee(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
