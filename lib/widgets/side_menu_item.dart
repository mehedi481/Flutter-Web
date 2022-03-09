import 'package:flutter/material.dart';
import 'package:flutter_webapp_santos/helpers/responsiveness.dart';
import 'package:flutter_webapp_santos/widgets/horizontal_menu_item.dart';
import 'package:flutter_webapp_santos/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  const SideMenuItem({Key? key, required this.itemName, required this.onTap})
      : super(key: key);
  final String itemName;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isMediumScreen(context)) {
      return VerticalMenuItem(itemName: itemName, onTap: onTap);
    } else {
      return HorizoltalMenuItem(onTap: onTap, itemName: itemName);
    }
  }
}
