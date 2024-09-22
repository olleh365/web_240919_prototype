import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'tabview_00.dart';
import 'tabview_01.dart';
import 'tabview_02.dart';
import 'tabview_03.dart';
import 'package:web_240919_prototype/models/bannercard.dart';

class Section01 extends StatelessWidget {
  const Section01({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    const tabTextStyle = TextStyle(
      fontFamily: 'MyFontFamily',
      fontSize: 14,
      fontWeight: FontWeight.w500,
    );

    return Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DefaultTabController(
                length: 4,
                child: Column(
                  children: [
                    TabBar(
                      tabs: [
                        Tab(child: Text('로그 작성하기', style: tabTextStyle)),
                        Tab(child: Text('작성한 로그 보기', style: tabTextStyle)),
                        Tab(child: Text('마이페이지', style: tabTextStyle)),
                        Tab(child: Text('설정', style: tabTextStyle)),
                      ],
                      indicatorColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: Colors.black,
                      unselectedLabelColor: const Color(0xFF989898),
                      dividerColor: Color(0xFFEEEEEE),
                      // splashFactory: NoSplash.splashFactory,
                    ),
                    SizedBox(
                      height: 1000,
                      child: TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          Tabview00(),
                          _buildWrapView(3),
                          _buildWrapView(14),
                          Tabview03(),
                        ],
                      ),
                    ),
                  ],
                )
              ),
          ],
        ));
  }
}

Widget _buildWrapView(int itemCount) {
  List<String> bannerImages = List.generate(
    itemCount,
        (index) => 'assets/img/test/banner0$index.jpg',
  );

  return Padding(
    padding: const EdgeInsets.all(16),
    child: Wrap(
      spacing: 16,
      runSpacing: 16,
      children: List.generate(itemCount, (index) {
        return SizedBox(
          width: 154,
          height: 200,
          child: BannerCard(
            imagePath: bannerImages[index],
            title: 'Banner $index',
            onTap: () {
              // Get.to(() => TargetPage());
            },
          ),
        );
      }),
    ),
  );
}