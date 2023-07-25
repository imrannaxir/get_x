import 'package:get/get.dart';

class ListViewController extends GetxController {
  RxList<String> fruitList = [
    'Mango',
    'Apple',
    'Banana',
    'Orange',
    'Pear',
    'Watermelon',
    'Cherry',
    'Strawberry',
    'Grapes',
    'Açaí',
    'Acerola',
    'Akebi',
    'Ackee',
    'American',
    'Mayapple',
  ].obs;
  RxList<dynamic> tempFruitList = [].obs;

  addToFavorite(String value) {
    tempFruitList.add(value);
  }

  removeFromFavorite(String value) {
    tempFruitList.remove(value);
  }
}
