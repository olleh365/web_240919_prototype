import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tabview00 extends StatelessWidget{
  const Tabview00({super.key});
  
  @override
  Widget build(BuildContext context){
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
        child: GridView(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            childAspectRatio: 7/9,
          ),
          padding: EdgeInsets.all(16.0),
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                color: Colors.blueAccent,
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                color: Colors.redAccent,
              ),
            ),
            Card(
              child: Container(
                color: Colors.amber,
              ),
            ),
            Card(
              child: Container(
                color: Colors.greenAccent,
              ),
            ),
            Card(
              child: Container(
                color: Colors.red,
              ),
            ),
            Card(
              child: Container(
                color: Colors.greenAccent,
              ),
            ),
          ],
        )
    );
  }
}