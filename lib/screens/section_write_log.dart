import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SectionWriteLog extends StatelessWidget{
  SectionWriteLog({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Column(
        children: [
          SizedBox(
            width: 600,
            height: 220,
            child: Image.asset(
              'assets/img/test/banner03.png',
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}