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
              'assets/img/test/banner03.jpg',
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '오늘 로그 작성하기',
                    style: TextStyle(
                        fontFamily: 'MyFontFamily',
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                    color: Colors.black),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'D·LOG는 매일의 순간들을 손쉽게 남길 수 있도록 도와줍니다. \n오늘의 로그를 작성해 볼까요?',
                    style: TextStyle(
                        fontFamily: 'MyFontFamily',
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}