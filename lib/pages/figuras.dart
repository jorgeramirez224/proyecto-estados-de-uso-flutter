import 'package:flutter/material.dart';
import 'package:fotoactividad/controllers/controller_figuras.dart';
import 'package:get/get.dart';

class Figuras extends StatelessWidget{
  Figuras({Key? key}) : super(key: key);
  final controllerFiguras = Get.find<ControllerFiguras>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Change Figures'),
      ),
      body: Center(
        child: GetBuilder<ControllerFiguras>(
          builder: (controllerFiguras) => Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: controllerFiguras.border,
              color: controllerFiguras.color),
          ),
        ),
      ),
      floatingActionButton: GetBuilder<ControllerFiguras>(
        builder: (controllerFiguras) => FloatingActionButton(
          child: Icon(controllerFiguras.icon,
          color: controllerFiguras.colorIcon),
          backgroundColor: controllerFiguras.color,
        onPressed: () {
          controllerFiguras.changeColor();
          controllerFiguras.changeIconColor();
          controllerFiguras.borderFigure();
          controllerFiguras.changeIcon();
        },
      ),
      ),
    ) ;
  }
}