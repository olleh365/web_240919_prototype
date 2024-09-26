import 'package:flutter/material.dart';
import 'package:get/get.dart';



class SectionHome extends StatelessWidget {
  final SectionHomeController controller = Get.put(SectionHomeController());

  SectionHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: SizedBox(
              width: 600,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: Placeholder(),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '활용 가이드',
                    style: TextStyle(
                        fontFamily: 'MyFontFamily',
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'D·LOG는 매일의 작은 순간들을 모아 자신의 인생 이야기를 만들어갑니다. \n어떻게 활용할 수 있는지 알아볼까요?',
                    style: TextStyle(
                        fontFamily: 'MyFontFamily',
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  )
                ],
              ),
            )
          ),
          TabBarSection(controller: controller),
          Obx(() => Container(
            padding: const EdgeInsets.all(16),
            child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 7/9,
                ),
                itemCount: controller.cardContents[controller.currentIndex.value]
                    .length,
                itemBuilder: (context, index){
                  final cardData = controller.cardContents[controller.currentIndex.value][index];
                  return AspectRatio(
                    aspectRatio: 7/9,
                    child: Card(
                      elevation: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Stack(
                          children: [
                            Image.asset(
                              cardData.image,
                              fit: BoxFit.cover,
                              height: double.infinity,
                            ),
                            Positioned(
                              top: 16,
                                left: 16,
                                right: 16,
                                child: Text(cardData.title,style: const TextStyle(color: Colors.white),)
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
            ),
          )),
        ],
      ),
    );
  }
}

class CardItem {
  final String title;
  final String image;

  CardItem({required this.title, required this.image});
}

class SectionHomeController extends GetxController {
  var currentIndex = 0.obs;
  List<List<CardItem>> cardContents = [
    [
      CardItem(title: 'Card 1', image: 'assets/img/test/banner00.jpg'),
      CardItem(title: 'Card 2', image: 'assets/img/test/banner01.jpg'),
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


const tabTextStyle = TextStyle(
  fontFamily: 'MyFontFamily',
  fontSize: 14,
  fontWeight: FontWeight.w500,
);

class TabBarSection extends StatelessWidget {
  final SectionHomeController controller;

  TabBarSection({required this.controller});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          TabBar(
            onTap: (index) {
              controller.currentIndex.value = index;
            },
            tabs: const [
              Tab(child: Text('로그 작성하기', style: tabTextStyle)),
              Tab(child: Text('작성한 로그 보기', style: tabTextStyle)),
              Tab(child: Text('마이페이지', style: tabTextStyle)),
              Tab(child: Text('설정', style: tabTextStyle)),
            ],
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            unselectedLabelColor: const Color(0xFF989898),
            dividerColor: const Color(0xFFEEEEEE),
          ),
        ],
      ),
    );
  }
}
