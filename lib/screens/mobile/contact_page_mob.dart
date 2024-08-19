import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPageMobile extends StatefulWidget {
  const ContactPageMobile({super.key});

  @override
  State<ContactPageMobile> createState() => _ContactPageMobileState();
}

class _ContactPageMobileState extends State<ContactPageMobile> {

  final String githubUrl = 'https://github.com/Vishnu-Deepan';
  final String linkedInUrl = 'https://www.linkedin.com/in/vishnu-deepan-p/';
  final String whatsappUrl = 'https://wa.me/9994376845';
  final String emailUrl = 'mailto:vishnudeepanp@gmail.com';

  // Function to launch URLs
  void _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Me'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // GitHub
            ContactButton(
              icon: Icons.code,
              text: 'GitHub',
              url: githubUrl,
              iconAsset: 'assets/github_logo.png',
            ),
            // LinkedIn
            ContactButton(
              icon: Icons.business,
              text: 'LinkedIn',
              url: linkedInUrl,
              iconAsset: 'assets/linkedin_logo.png',
            ),
            // WhatsApp
            ContactButton(
              icon: Icons.message,
              text: 'WhatsApp',
              url: whatsappUrl,
              iconAsset: 'assets/whatsapp_logo.png',
            ),
            // Email
            ContactButton(
              icon: Icons.email,
              text: 'Email',
              url: emailUrl,
              iconAsset: 'assets/email_logo.png',
            ),
          ],
        ),
      ),
    );
  }
}

// Custom widget for contact buttons
class ContactButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final String url;
  final String iconAsset;

  const ContactButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.url,
    required this.iconAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: ElevatedButton.icon(
        icon: Image.asset(
          iconAsset,
          height: 24.0,
        ),
        label: Text(text),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
          textStyle: TextStyle(fontSize: 18),
        ),
        onPressed: () {
          _launchUrl(url);
        },
      ),
    );
  }

  void _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}





