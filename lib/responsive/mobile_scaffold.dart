import 'package:flutter/material.dart';
import 'package:portfolio/constant.dart';
import 'package:portfolio/utils/projects_box.dart';

import '../utils/experience_box.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackgroundColor,
      appBar: myAppBar,
      drawer: myDrawer,
      body: SingleChildScrollView(child:  Column(
        children: [
          //title
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "P R O J E C T S",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),

          // porject grid
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 7,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return ProjectBox();
                  }),
            ),
          ),

          // Expanded(
          //   child: ListView.builder(
          //     itemCount: 5,
          //     itemBuilder: (context, index) {
          //       return ExperienceBox();
          //     },
          //   ),
          // ),

        ],
      ),),
    );
  }
}
