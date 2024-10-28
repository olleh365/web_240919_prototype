import 'package:get/get.dart';

class CardItem {
  final String title;
  final String image;

  CardItem({required this.title, required this.image});
}

class CardController extends GetxController {
  var currentIndex = 0.obs;
  List<List<CardItem>> cardContents = [
    [
      CardItem(title: 'Card 1', image: 'assets/img/test/banner00.jpg'),
      CardItem(title: 'Card 2', image: 'assets/img/test/banner01.jpg'),
      CardItem(title: 'Card 3', image: 'assets/img/test/banner02.jpg'),
      CardItem(title: 'Card 3', image: 'assets/img/test/banner02.jpg'),
      CardItem(title: 'Card 3', image: 'assets/img/test/banner02.jpg'),
      CardItem(title: 'Card 3', image: 'assets/img/test/banner02.jpg'),
      CardItem(title: 'Card 3', image: 'assets/img/test/banner02.jpg'),

    ],
    [
      CardItem(title: 'Card 1', image: 'assets/img/test/banner00.jpg'),
      CardItem(title: 'Card 2', image: 'assets/img/test/banner01.jpg'),
      CardItem(title: 'Card 3', image: 'assets/img/test/banner02.jpg'),
      CardItem(title: 'Card 3', image: 'assets/img/test/banner02.jpg'),
      CardItem(title: 'Card 3', image: 'assets/img/test/banner02.jpg'),

    ],
    [
      CardItem(title: 'Card 1', image: 'assets/img/test/banner00.jpg'),
      CardItem(title: 'Card 2', image: 'assets/img/test/banner01.jpg'),
    ],
    [
      CardItem(title: 'Card 1', image: 'assets/img/test/banner00.jpg'),
      CardItem(title: 'Card 2', image: 'assets/img/test/banner01.jpg'),
      CardItem(title: 'Card 3', image: 'assets/img/test/banner02.jpg'),
    ],
  ];
}
