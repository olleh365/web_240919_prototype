import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'section_00.dart';

class Section01 extends StatelessWidget {
  const Section01({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final tabTextStyle = TextStyle(
      fontFamily: 'MyFontFamily',
      fontSize: 16,
    );

    return Container(
      width: 1920,
        color: Colors.white,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 600,
            child: Column(
              children: [
                Text('d'),
              ],
            ),
          )
        ],
      )
    );
  }
}
