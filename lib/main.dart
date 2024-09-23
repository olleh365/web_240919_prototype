import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/section_01.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      title: 'DLOG | SOFTLUNCH',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: Colors.white,
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'DLOG 활용 가이드',
                  style: TextStyle(
                      fontFamily: 'MyFontFamily',
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.menu_rounded)),
              ],
            ),
          ),
          shape: const Border(
              bottom: BorderSide(
                color: Color(0xFFEEEEEE),
                width: 1,
              )
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                child: Section00(),
              ),
              Center(
                child: Section01(),
              ),
            ],
          ),
        )
    );
  }
}


class Section00 extends StatelessWidget {
  const Section00({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
        width: 600,
        color: Colors.white,
        child: const Column(
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
        ));
  }
}

class Section01Controller extends GetxController {
  var currentIndex = 0.obs;
  List<String> tabTexts = [
    'This is tab 1 content.\n It should expand with text.\n This is a third line.',
    'This is tab 2 content. It has more lines.\n Line 2\n Line 3\n Line 4\n Line 5\n Line 6',
    'This is tab 3 content.\n It should expand with text.\n This is a third line.',
    'This is tab 4 content. It has more lines.\n Line 2\n Line 3\n Line 4\n Line 5\n Line 6',
  ];
}

class Section01 extends StatelessWidget {
  final Section01Controller controller = Get.put(Section01Controller());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        children: [
          TabBarSection(controller: controller),
          Obx(() => Container(
            padding: const EdgeInsets.all(16),
            child: Text(
              controller.tabTexts[controller.currentIndex.value],
              style: const TextStyle(fontSize: 16),
            ),
          )),
        ],
      ),
    );
  }
}

const tabTextStyle = TextStyle(
  fontFamily: 'MyFontFamily',
  fontSize: 14,
  fontWeight: FontWeight.w500,
);

class TabBarSection extends StatelessWidget {
  final Section01Controller controller;

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
