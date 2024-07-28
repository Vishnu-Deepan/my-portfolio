import 'package:flutter/material.dart';
import 'package:portfolio/responsive/mobile_scaffold.dart';
import 'package:portfolio/responsive/responsive_layout.dart';

import 'responsive/desktop_scaffold.dart';
import 'responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(mobileScaffold: MobileScaffold(), tabletScaffold: TabletScaffold(), desktopScaffold: DesktopScaffold()),
    );
  }
}
