import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/section_home.dart';

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
          child: Center(
            child: Column(
              children: [
                SectionHome(),
                //footer1영역,
                //fotter2영역,
              ],
            ),
          ),
        )
    );
  }
}