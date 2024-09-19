import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/section_00.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DLOG | SOFTLUNCH',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('DLOG 활용 가이드'),
          actions: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                  onPressed:(){}, icon: Icon(Icons.menu_rounded)
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Section00(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
