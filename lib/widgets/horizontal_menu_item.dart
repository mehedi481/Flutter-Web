import 'package:flutter/material.dart';
import 'package:flutter_webapp_santos/constants/controllers.dart';
import 'package:flutter_webapp_santos/constants/style.dart';
import 'package:flutter_webapp_santos/widgets/custom_text.dart';
import 'package:get/get.dart';

class HorizoltalMenuItem extends StatelessWidget {
  final VoidCallback onTap;
  final String itemName;

  const HorizoltalMenuItem(
      {Key? key, required this.onTap, required this.itemName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("Not Hovering");
      },
      child: Obx(() {
        return Container(
          color: menuController.isHovering(itemName)
              ? lightGrey.withOpacity(0.1)
              : Colors.transparent,
          child: Row(children: [
            Visibility(
              visible: menuController.isHovering(itemName) ||
                  menuController.isActive(itemName),
              child: Container(
                width: 6,
                height: 40,
                color: dark,
              ),
              maintainSize: true,
              maintainState: true,
              maintainAnimation: true,
            ),
            SizedBox(
              width: _width / 80,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: menuController.returnIconFor(itemName),
            ),
            if (!menuController.isActive(itemName))
              Flexible(
                  child: CustomText(
                text: itemName,
                color: menuController.isHovering(itemName) ? dark : lightGrey,
              ))
            else
              Flexible(
                  child: CustomText(
                text: itemName,
                color: dark,
                size: 18,
                weight: FontWeight.bold,
              ))
          ]),
        );
      }),
    );
  }
}
