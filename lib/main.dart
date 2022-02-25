import 'package:flutter/material.dart';
import 'package:fotoactividad/controllers/controller_galeria.dart';
import 'package:fotoactividad/pages/figuras.dart';
import 'package:fotoactividad/pages/galeria.dart';
import 'package:fotoactividad/pages/menu_page.dart';
import 'controllers/controller_menu_page.dart';
import 'controllers/controller_figuras.dart';
import 'package:get/get.dart';

void main() {
  Get.lazyPut(() =>ControllerMenuPage());
  Get.lazyPut(() => ControllerFiguras());
  Get.lazyPut(() => ControllerGaleria());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Actividad Foto',
      initialRoute: '/galeria',
      routes: {
        '/menu_page': (context) => const MenuPage(),
        '/figuras': (context) =>  Figuras(),
        '/galeria': (context) =>  Galeria()
      },
    );
  }
}

