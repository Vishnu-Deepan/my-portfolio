import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_icon_button/loading_icon_button.dart';
import 'package:url_launcher/url_launcher.dart';

class DashboardPageMobile extends StatefulWidget {
  const DashboardPageMobile({super.key});

  @override
  State<DashboardPageMobile> createState() => _DashboardPageMobileState();
}

class _DashboardPageMobileState extends State<DashboardPageMobile> {
  final LoadingButtonController _btnController = LoadingButtonController();

  void downloadResume() async {
    String fileUrl =
        "https://drive.google.com/file/d/1T2S5_9zTfNX9Ns7rTLc6n9fFxFUfnj_h/view?usp=sharing";
    final url = Uri.parse(fileUrl);
    launchUrl(url);
    Future.delayed(const Duration(seconds: 5), () {
      _btnController.reset();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height/10,),

          Text(
            "VISHNU DEEPAN P ",
            style: GoogleFonts.chauPhilomeneOne(
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Flutter Developer",
            style: GoogleFonts.baskervville(fontSize: 18),
          ),

          Padding(
            padding: EdgeInsets.all(
              10,
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width/2,
              child: Image.asset(
                "assets/me.png",
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(45),
            child: Text(
              textAlign: TextAlign.center,
              "Enthusiastic B.Tech IT graduate seeking a challenging entry-level position. Possessing a strong foundation in computer science and a keen interest in exploring the dynamic world of technology. Eager to contribute innovative ideas and solutions to a thriving organization. Expected graduation in May 2025.",
              style: GoogleFonts.poppins(fontSize: 16),
            ),
          ),
          LoadingButton(
            primaryColor: Colors.transparent,
            child: const Text('Download Resume'),
            iconData: Icons.download_outlined,
            onPressed: () => downloadResume(),
            controller: _btnController,
          ),
          SizedBox(height: 70,),
        ],
      ),
    );
  }
}
