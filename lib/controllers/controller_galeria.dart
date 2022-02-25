import 'package:get/get.dart';

class ControllerGaleria extends GetxController {
  List photos = [
    'data:image/png;base64,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',
    'https://i.pinimg.com/originals/cd/0f/1c/cd0f1ce1025f2829ff3bfa865d11ed1e.jpg',
    'https://spng.pngfind.com/pngs/s/105-1059194_file-micrologo-nintendo-svg-znak-ograniczenie-prdkoci-70.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSmksqYEWufPbdzfpH4yWjcfu7QLi_vrsAmw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF3vCOCpQcxNEaayzXXhEo7S9gxW1xRFKLRw&usqp=CAU',
    'https://i.blogs.es/68d672/donkey-kong-country-3/450_1000.jpeg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2jjgP-q54uucCyMcUQn5U93pXv4jFoULrxw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUu_RTD4hlCS-RYbnHquLPEYYxuj5gAOjVyg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdqAPl27sXxFGko34WdCoXiGCcytv6-6GeTg&usqp=CAU',
    'https://e7.pngegg.com/pngimages/699/47/png-clipart-donkey-kong-country-tropical-freeze-donkey-kong-country-2-diddy-s-kong-quest-dk-jungle-climber-donkey-kong-nintendo-video-game-thumbnail.png'
  ];

  int pos = 0;

  void changeNextPos() {
    if (pos < photos.length - 1) {
      pos ++;
    } else {
      pos = 0;
    }
    update();
  }

  void changePrevPos() {
    if (pos == 0) {
      pos = photos.length - 1;
    } else {
      pos--;
    }
    update();
  }
}
