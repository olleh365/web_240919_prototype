import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'tabview_00.dart';
import 'tabview_01.dart';
import 'tabview_02.dart';
import 'tabview_03.dart';

class Section01 extends StatelessWidget {
  const Section01({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    const tabTextStyle = TextStyle(
      fontFamily: 'MyFontFamily',
      fontSize: 14,
      fontWeight: FontWeight.w600,
    );

    double tabBarViewHeight;
    if (screenWidth < 300) {
      tabBarViewHeight = screenHeight * 0.45;
    } else if (screenWidth < 350) {
      tabBarViewHeight = screenHeight * 0.47;
    } else if (screenWidth < 400) {
      tabBarViewHeight = screenHeight * 0.56;
    } else if (screenWidth < 450) {
      tabBarViewHeight = screenHeight * 0.62;
    } else if (screenWidth < 500) {
      tabBarViewHeight = screenHeight * 0.7;
    } else if (screenWidth < 580) {
      tabBarViewHeight = screenHeight * 0.83;
    } else {
      tabBarViewHeight = screenHeight;
    }

    return Container(
        width: screenWidth,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 600,
              child: DefaultTabController(
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
                      height: tabBarViewHeight,
                        child: TabBarView(
                          children:[
                            Tabview00(),
                            Tabview01(),
                            Tabview02(),
                            Tabview03(),
                          ]
                      )
                    )
                  ],
                )
              ),
            )
          ],
        ));
  }
}
