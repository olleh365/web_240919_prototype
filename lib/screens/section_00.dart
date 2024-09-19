import 'package:flutter/material.dart';

class Section00 extends StatelessWidget {
  const Section00({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: 1920,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 600,
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 48,width: 48,child: Placeholder(),),
                SizedBox(height: 8.0),
                Text('dfdfdf')
              ],
            ),
          ),
        ],
      )
    );
  }
}
