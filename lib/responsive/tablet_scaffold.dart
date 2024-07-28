import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constant.dart';
import '../utils/experience_box.dart';
import '../utils/projects_box.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackgroundColor,
      appBar: myAppBar,
      drawer: myDrawer,
      body: SingleChildScrollView(
        child:  Column(
          mainAxisSize: MainAxisSize.min,
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
                        crossAxisCount: 4),
                    itemBuilder: (context, index) {
                      return ProjectBox();
                    }),
              ),
            ),
            // Flexible(
            //   fit: FlexFit.loose,
            //   child: ListView.builder(
            //     itemCount: 5,
            //     itemBuilder: (context, index) {
            //       return ExperienceBox();
            //     },
            //   ),
            // ),
          ],
        ),
      ),

    );
  }
}
