import 'package:flutter/cupertino.dart';

class ResponsiveLayout extends StatelessWidget{

  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  const ResponsiveLayout({super.key, required this.mobileScaffold, required this.tabletScaffold, required this.desktopScaffold});



  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if (constraints.maxWidth < 502) {
        return mobileScaffold;
      }else if(constraints.maxWidth<1100 && constraints.maxWidth>=500){
        return tabletScaffold;
      }
      else
        return desktopScaffold;

    },);
  }

}