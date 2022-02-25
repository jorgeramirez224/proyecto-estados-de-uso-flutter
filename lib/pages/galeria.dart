import 'package:flutter/material.dart';
import 'package:fotoactividad/controllers/controller_galeria.dart';
import 'package:get/get.dart';

class Galeria extends StatelessWidget {
  Galeria({Key? key}) : super(key: key);
  final galeria = Get.find<ControllerGaleria>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Galeria de fotos'),
      ),
      body: Center(
        child: GetBuilder<ControllerGaleria>(
          builder: (controllerGaleria) => Container(
            width: 400,
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      controllerGaleria.photos[controllerGaleria.pos]),
                  fit: BoxFit.fill),
            ),
          ),
        ),
      ),
      floatingActionButton: GetBuilder<ControllerGaleria>(
        builder: (controllerGaleria) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () {
                controllerGaleria.changePrevPos();
              },
              backgroundColor: Colors.cyan,
              child: const Icon(Icons.arrow_left),
            ),
            FloatingActionButton(
              onPressed: () {
                controllerGaleria.changeNextPos();
              },
              backgroundColor: Colors.cyan,
              child: const Icon(Icons.arrow_right),
            ),
          ],
        ),
      ),
    );
  }
}
