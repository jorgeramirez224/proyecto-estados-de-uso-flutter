import 'package:flutter/material.dart';
import 'package:fotoactividad/controllers/controller_menu_page.dart';
import 'package:get/get.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text('Change Photo'),
      ),
      body: GetBuilder<ControllerMenuPage>(
        builder: (controllerMenuPage) => Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: NetworkImage(
                  controllerMenuPage.image),
                  ),
              ),
              GestureDetector(
                onTap: (){
                  controllerMenuPage.cambiarImagen();
                },
              ), 
          ],
        ), 
      ),
    );
  }
}
