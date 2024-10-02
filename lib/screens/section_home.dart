import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:easy_localization/easy_localization.dart';
import 'package:web_240919_prototype/controllers/card_controller.dart';


class SectionHome extends StatelessWidget {
  final CardController controller = Get.put(CardController());

  SectionHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: SizedBox(
              width: 600,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 48,
                    width: 48,
                    child: Placeholder(),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'home_title'.tr(),
                    style: const TextStyle(
                        fontFamily: 'MyFontFamily',
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'home_desc'.tr(),
                    style: const TextStyle(
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
                  return GestureDetector(
                    onTap: () {
                      if (cardData.title =='Card 1'){
                        Get.toNamed('/section_write_log');
                      }
                      else if (cardData.title == 'Card 2'){
                        Get.toNamed('/section_record_photo');
                      }
                    },
                    child: AspectRatio(
                      aspectRatio: 7/9,
                      child: Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
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


const tabTextStyle = TextStyle(
  fontFamily: 'MyFontFamily',
  fontSize: 14,
  fontWeight: FontWeight.w500,
);

class TabBarSection extends StatelessWidget {
  final CardController controller;

  const TabBarSection({super.key, required this.controller});

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
