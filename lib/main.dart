import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/section_00.dart';
import 'screens/section_01.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'DLOG | SOFTLUNCH',
      home: Scaffold(
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
          shape: Border(
            bottom: BorderSide(
              color: Color(0xFFEEEEEE),
              width: 1,
            )
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Section00(),
                Section01(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
