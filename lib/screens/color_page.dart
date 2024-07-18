import 'package:flutter/material.dart';
import 'package:tuko/components/item_of_page.dart';

import 'package:tuko/models/item_model.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});
  final List<ItemModel> listOfNumber = const [
    ItemModel(
        itemImage: 'assets/images/colors/color_black.png',
        jbName: 'Kuro',
        enName: 'Black',
        itemSound: 'sounds/colors/black.wav'),
    ItemModel(
        itemImage: 'assets/images/colors/color_brown.png',
        jbName: 'chairo',
        enName: 'Brown',
        itemSound: 'sounds/colors/brown.wav'),
    ItemModel(
        itemImage: 'assets/images/colors/color_dusty_yellow.png',
        jbName: 'Hokori Ppoi Kiiro',
        enName: 'Dusty Yellow',
        itemSound: 'sounds/colors/dusty yellow.wav'),
    ItemModel(
        itemImage: 'assets/images/colors/color_gray.png',
        jbName: 'Gure',
        enName: 'Gray',
        itemSound: 'sounds/colors/gray.wav'),
    ItemModel(
        itemImage: 'assets/images/colors/color_green.png',
        jbName: 'Midori',
        enName: 'Green',
        itemSound: 'sounds/colors/green.wav'),
    ItemModel(
        itemImage: 'assets/images/colors/color_red.png',
        jbName: 'Aka',
        enName: 'Red',
        itemSound: 'sounds/colors/red.wav'),
    ItemModel(
        itemImage: 'assets/images/colors/color_white.png',
        jbName: 'Shiroi',
        enName: 'White',
        itemSound: 'sounds/colors/white.wav'),
    ItemModel(
        itemImage: 'assets/images/colors/yellow.png',
        jbName: 'Ki iro',
        enName: 'Yellow',
        itemSound: 'sounds/colors/yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFAA5377),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Colors',
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ItemOfPage(
            item: listOfNumber[index],
            colorOne: const Color(0XFFAA5377),
            colorTwo: const Color(0XFF3b4371),
          );
        },
        itemCount: listOfNumber.length,
      ),
    );
  }
}
