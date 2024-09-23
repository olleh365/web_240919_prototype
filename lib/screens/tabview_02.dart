import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tabview02 extends StatelessWidget{
  const Tabview02({super.key});

  @override
  Widget build(BuildContext context){
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Wrap(
        spacing: 16,
        runSpacing: 16,
        children: [
        ],
      ),
    );
  }
}