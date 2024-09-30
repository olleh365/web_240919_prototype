import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_240919_prototype/screens/common_layout.dart';
import 'screens/section_home.dart';
import 'screens/section_write_log.dart';
import 'screens/section_record_photo.dart';
import 'screens/common_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return GetMaterialApp(
      title: 'DLOG | SOFTLUNCH',
      home: HomeScreen(),
      getPages: [
        //section_home 에서 Get.toNamed 추가 필요
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/section_write_log', page: () => SectionWriteLog()),
        GetPage(name: '/section_record_photo', page: () => SectionRecordPhoto())
      ],
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonLayout(body: SectionHome());
  }
}