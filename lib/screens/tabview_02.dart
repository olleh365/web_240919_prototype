import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tabview02 extends StatelessWidget{
  const Tabview02({super.key});

  @override
  Widget build(BuildContext context){
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('일')
        ],
      ),
    );
  }
}