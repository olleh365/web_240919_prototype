import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tabview00 extends StatelessWidget{
  const Tabview00({super.key});
  
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