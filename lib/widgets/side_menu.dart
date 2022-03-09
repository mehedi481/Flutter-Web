import 'package:flutter/material.dart';
import 'package:flutter_webapp_santos/constants/controllers.dart';
import 'package:flutter_webapp_santos/helpers/responsiveness.dart';
import 'package:flutter_webapp_santos/routing/routes.dart';
import 'package:flutter_webapp_santos/widgets/custom_text.dart';
import 'package:flutter_webapp_santos/widgets/side_menu_item.dart';
import 'package:get/get.dart';

import '../constants/style.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(children: [
        if (ResponsiveWidget.isSmallScreen(context))
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(
                    width: _width / 48,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Image.asset("assets/icons/logo.png"),
                  ),
                  const Flexible(
                    child: CustomText(
                      text: "DashBoard",
                      size: 20,
                      weight: FontWeight.bold,
                      color: active,
                    ),
                  ),
                  SizedBox(
                    width: _width / 48,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 40),
              Divider(
                color: lightGrey.withOpacity(0.1),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: sideMenuItems
                    .map((itemName) => SideMenuItem(
                        itemName: itemName == authenticationPageRoute
                            ? "Log Out"
                            : itemName,
                        onTap: () {
                          if (itemName == authenticationPageRoute) {
                            //TODO:: go to authentication page
                          }
                          if (!menuController.isActive(itemName)) {
                            menuController.changeActiveItemTo(itemName);
                            if (ResponsiveWidget.isSmallScreen(context)) {
                              Get.back();
                              //TODO:: go to itemMenu route 
                            }
                          }
                        }))
                    .toList(),
              ),
      ]),
    );
  }
}
