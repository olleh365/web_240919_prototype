import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tabview01 extends StatelessWidget{
  const Tabview01({super.key});

  @override
  Widget build(BuildContext context){
    double screenWidth = MediaQuery.of(context).size.width;

    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      padding: EdgeInsets.all(16.0),
      children: [
        Card(
          child: Container(
            color: Colors.blueAccent,
          ),
        ),
        Card(
          child: Container(
            color: Colors.blueAccent,
          ),
        )
      ],
    );
  }
}