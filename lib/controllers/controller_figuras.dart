import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ControllerFiguras extends GetxController {
  var icon = Icons.square_foot_rounded;
  var border = BorderRadius.circular(80);
  Color color = Colors.red;
  Color colorIcon = Colors.blueGrey;

  void changeColor() {
    if (color == Colors.red) {
      color = Colors.yellow;
    } else {
      color = Colors.red;
    }
    update();
  }

  void changeIconColor() {
    if (colorIcon == Colors.green) {
      colorIcon = Colors.orange;
    } else {
      colorIcon = Colors.green;
    }
    update();
  }

  void changeIcon() {
    if (icon == Icons.square_foot_rounded) {
      icon = Icons.circle_rounded;
    } else {
      icon = Icons.square_foot_rounded;
    }
    update();
  }

  void borderFigure() {
    if (border == BorderRadius.circular(80)) {
      border = BorderRadius.circular(20);
    } else {
      border = BorderRadius.circular(80);
    }
    update();
  }
}
