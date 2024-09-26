import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          // footer1
          Container(
            width: double.infinity,
            height: 110,
            color: Colors.black,
            child: const Center(
              child: SizedBox(
                width: 600,
                child: Padding(
                    padding: EdgeInsets.all(32.0),
                  child: Text(
                    'Footer 1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ),
            ),
          ),
          // footer2
          Container(
            width: double.infinity,
            height: 100,
            color: const Color(0xFF444444),
            child: const Center(
              child: Text(
                '© Softlunch. All rights reserved.',
                style: TextStyle(
                  fontFamily: 'MyFontFamily',
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
