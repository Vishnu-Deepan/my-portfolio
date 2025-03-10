import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

// DRAWER Theme

// 360a21 red shade
// 061630 blue shade

const primaryColor = Color(0xFF685BFF);
const canvasColor = Color(0xFF1b1b1b);
const scaffoldBackgroundColor = Color(0xFF464667);
const accentCanvasColor = Color(0xFF3E3E61);
const white = Colors.white;
final actionColor = const Color(0xFF5F5FA7).withOpacity(0.6);
final divider = Divider(color: white.withOpacity(0.3), height: 1);

var myBackgroundColor = Color(0xFF1b1b1b);


final SidebarXController controller = SidebarXController(selectedIndex: 0, extended: true);

var myDrawer = SidebarX(
  controller: controller,
  theme: SidebarXTheme(
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: canvasColor,
      borderRadius: BorderRadius.circular(20),
    ),
    hoverColor: scaffoldBackgroundColor,
    textStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
    selectedTextStyle: const TextStyle(color: Colors.white),
    hoverTextStyle: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
    ),
    itemTextPadding: const EdgeInsets.only(left: 30),
    selectedItemTextPadding: const EdgeInsets.only(left: 30),
    itemDecoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: canvasColor),
    ),
    selectedItemDecoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: actionColor.withOpacity(0.37),
      ),
      gradient: const LinearGradient(
        colors: [accentCanvasColor, canvasColor],
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.28),
          blurRadius: 30,
        )
      ],
    ),
    iconTheme: IconThemeData(
      color: Colors.white.withOpacity(0.7),
      size: 20,
    ),
    selectedIconTheme: const IconThemeData(
      color: Colors.white,
      size: 20,
    ),
  ),
  extendedTheme: const SidebarXTheme(
    width: 200,
    decoration: BoxDecoration(
      color: canvasColor,
    ),
  ),
  footerDivider: divider,
  headerBuilder: (context, extended) {
    return SizedBox(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        // child: Image.asset('assets/profile.png'),
      ),
    );
  },
  items: [
    SidebarXItem(
      icon: Icons.home,
      label: 'Dashboard',
      onTap: () {
        controller.selectIndex(0);
      },
    ),
    SidebarXItem(
      icon: Icons.work_outline_rounded,
      label: 'Experience',
      onTap: () {
        controller.selectIndex(1);
      },
    ),
    SidebarXItem(
      icon: Icons.school_outlined,
      label: 'Eductaion',
      onTap: () {
        controller.selectIndex(2);
      },
    ),
    SidebarXItem(
      icon: Icons.layers_outlined,
      label: 'Projects',
      onTap: () {
        controller.selectIndex(3);
      },
    ),
    SidebarXItem(
      icon: Icons.quick_contacts_mail_outlined,
      label: 'Contact',
      onTap: () {
        controller.selectIndex(4);
      },
    ),
  ],
);