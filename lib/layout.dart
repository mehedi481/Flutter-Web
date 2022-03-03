import 'package:flutter/material.dart';
import 'package:flutter_webapp_santos/helpers/responsiveness.dart';
import 'package:flutter_webapp_santos/widgets/large_screen.dart';
import 'package:flutter_webapp_santos/widgets/medium_screen.dart';
import 'package:flutter_webapp_santos/widgets/small_screen.dart';
import 'package:flutter_webapp_santos/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(
        backgroundColor: Colors.red,
      ),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
        mediumScreen: MediumScreen(),
      ),
    );
  }
}
