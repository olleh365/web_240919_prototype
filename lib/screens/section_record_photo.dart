import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'common_layout.dart';

class SectionRecordPhoto extends StatelessWidget{
  SectionRecordPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
        body: SizedBox(
          width: 600,
          child: Column(
            children: [
              SizedBox(
                width: 600,
                height: 220,
                child: Image.asset(
                  'assets/img/test/banner04.jpg',
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
                        '사진으로 기록하기',
                        style: TextStyle(
                          fontFamily: 'MyFontFamily',
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        '바로 기록을 못하면 미루게 되진 않았나요? 사진으로 당시의 시간, 날씨, 위치를 자동으로 기록하고 손쉽게 로그를 작성할 수 있어요! 사진으로 기록하는 세 가지 방법을 함께 확인해보세요!',
                        style: TextStyle(
                          fontFamily: 'MyFontFamily',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}