import 'package:flutter/material.dart';
import 'package:flutter_webapp_santos/constants/style.dart';
import 'package:flutter_webapp_santos/routing/routes.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();

  var activeItem = overViewPageRoute.obs;
  var hoverItem = "".obs;

  // When we change the item/page this will be called
  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  // When we Hover any Item this will be called
  onHover(String itemName) {
    if (!isActive(itemName)) {
      hoverItem.value = itemName;
    }
  }

  // Checking Item active or not.It's generate bool value
  isActive(String itemName) => activeItem.value == itemName;

  // Checking Item hovering or not.This will generate bool value
  isHovering(String itemName) => hoverItem.value == itemName;

  // return Icon for the ItemName
  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case overViewPageRoute:
        return _customIcon(Icons.trending_up, itemName);
      case driverPageRoute:
        return _customIcon(Icons.drive_eta, itemName);
      case clientsPageRoute:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case authenticationPageRoute:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  // return custom icon for the item
  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) {
      return Icon(
        icon,
        size: 22,
        color: dark,
      );
    } else {
      return Icon(
        icon,
        color: isHovering(itemName) ? dark : light,
      );
    }
  }
}
