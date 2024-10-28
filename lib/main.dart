import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:easy_localization/easy_localization.dart';
import 'package:web_240919_prototype/ui/common/common_layout.dart';
import 'package:web_240919_prototype/ui/home_page.dart';
import 'package:web_240919_prototype/ui/write_log_page.dart';
import 'package:web_240919_prototype/ui/record_photo_page.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en', 'US' ), Locale('ko', 'KR')],
        path: 'assets/translations',
      fallbackLocale: const Locale('en', 'US'),
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;

    return GetMaterialApp(
      title: 'main_title'.tr(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const HomeScreen(),
      theme: ThemeData(
          fontFamily: 'Pretendard'
      ),
      getPages: [
        //section_home 에서 Get.toNamed 추가 필요
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/section_write_log', page: () => WriteLogPage()),
        GetPage(name: '/section_record_photo', page: () => RecordPhotoPage())
      ],
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonLayout(body: HomePage());
  }
}
