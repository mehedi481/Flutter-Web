import 'package:flutter/material.dart';
import 'package:flutter_webapp_santos/constants/style.dart';
import 'package:flutter_webapp_santos/helpers/responsiveness.dart';

import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  return AppBar(
    backgroundColor: Colors.white,
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
            onPressed: () {
              key.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
    title: Row(children: [
      const Visibility(
        child: CustomText(
          text: "Dashboard",
          color: Colors.black,
          size: 20,
          weight: FontWeight.bold,
        ),
      ),
      Expanded(child: Container()),
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.settings,
          color: dark.withOpacity(0.7),
        ),
      ),
      Stack(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: dark.withOpacity(0.7),
            ),
          ),
          Positioned(
            top: 7,
            right: 7,
            child: Container(
              height: 12,
              width: 12,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: active,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: light,
                  width: 2,
                ),
              ),
            ),
          ),
        ],
      ),
      Container(
        width: 1,
        height: 22,
        color: lightGrey,
      ),
      const SizedBox(
        width: 24,
      ),
      const CustomText(
        text: "Mehedi Hasan",
        color: lightGrey,
      ),
      const SizedBox(
        width: 16,
      ),
      Container(
        padding: const EdgeInsets.all(2),
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: const CircleAvatar(
          backgroundColor: light,
          child: Icon(
            Icons.person_outline,
            color: dark,
          ),
        ),
      )
    ]),
  );
}
