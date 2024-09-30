import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'common_layout.dart';

const titleTextStyle = TextStyle(
  fontFamily: 'MyFontFamily',
  fontSize: 20,
  fontWeight: FontWeight.w600,
);
const descTextStyle = TextStyle(
  fontFamily: 'MyFontFamily',
  fontSize: 15,
  fontWeight: FontWeight.w400,
);

class SectionWriteLog extends StatelessWidget{
  SectionWriteLog({super.key});

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
                      const Text(
                        '오늘 로그 작성하기',
                        style: TextStyle(
                          fontFamily: 'MyFontFamily',
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        'D·LOG는 매일의 순간들을 손쉽게 남길 수 있도록 도와줍니다. \n오늘의 로그를 작성해 볼까요?',
                        style: TextStyle(
                          fontFamily: 'MyFontFamily',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,),
                      ),
                      const SizedBox(height: 50),
                      // 회색 영역 이미지 넣을 자리
                      Stack(
                        children: [
                          SizedBox(
                            height: 400,
                            width: double.infinity,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: const Color(0xFFEEEEEE),
                                  borderRadius: BorderRadius.circular(16.0)
                              ),
                            ),
                          ),
                          Positioned(
                            top: 80,
                              left: 50,
                              right: 50,
                              child: Image.asset(
                                  'assets/img/test/banner03.jpg',
                              )
                          ),
                          const Positioned(
                            top: 80,
                              left: 50,
                              child: Text('테스트 이미지라 변경 예정입니다.'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Text('타이틀 텍스트 예시입니다.',style: titleTextStyle,),
                      const SizedBox(height: 12),
                      const Text('설명 텍스트 예시입니다...',style: descTextStyle,),
                      const SizedBox(height: 16),

                    ],
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}