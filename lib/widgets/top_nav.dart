import 'package:flutter/material.dart';
import 'package:flutter_webapp_santos/helpers/responsiveness.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  return AppBar(
    elevation: 0,
    leading: !ResponsiveWidget.isSmallScreen(context) &&
            !ResponsiveWidget.isMediumScreen(context)
        ? Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Image.asset(
                  "assets/icons/logo.png",
                  width: 30,
                ),
              )
            ],
          )
        : IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
  );
}
