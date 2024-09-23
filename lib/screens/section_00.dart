import 'package:flutter/material.dart';

class Section00 extends StatelessWidget {
  const Section00({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
        width: 600,
        color: Colors.white,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 48,
              width: 48,
              child: Placeholder(),
            ),
            SizedBox(height: 8.0),
            Text(
              '활용 가이드',
              style: TextStyle(
                  fontFamily: 'MyFontFamily',
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 8.0),
            Text(
              'D·LOG는 매일의 작은 순간들을 모아 자신의 인생 이야기를 만들어갑니다. \n어떻게 활용할 수 있는지 알아볼까요?',
              style: TextStyle(
                  fontFamily: 'MyFontFamily',
                  fontWeight: FontWeight.w400,
                  fontSize: 16),
            )

          ],
        ));
  }
}
