import 'package:flutter/material.dart';
import 'package:tuko/components/item_of_page.dart';

import 'package:tuko/models/item_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<ItemModel> listOfNumber = const [
    ItemModel(
        itemImage: 'assets/images/numbers/number_one.png',
        jbName: 'Ichi',
        enName: 'One',
        itemSound: 'sounds/numbers/number_one_sound.mp3'),
    ItemModel(
        itemImage: 'assets/images/numbers/number_two.png',
        jbName: 'Ni',
        enName: 'Two',
        itemSound: 'sounds/numbers/number_two_sound.mp3'),
    ItemModel(
        itemImage: 'assets/images/numbers/number_three.png',
        jbName: 'San',
        enName: 'Three',
        itemSound: 'sounds/numbers/number_three_sound.mp3'),
    ItemModel(
        itemImage: 'assets/images/numbers/number_four.png',
        jbName: 'Shi',
        enName: 'Four',
        itemSound: 'sounds/numbers/number_four_sound.mp3'),
    ItemModel(
        itemImage: 'assets/images/numbers/number_five.png',
        jbName: 'Go',
        enName: 'Five',
        itemSound: 'sounds/numbers/number_five_sound.mp3'),
    ItemModel(
        itemImage: 'assets/images/numbers/number_six.png',
        jbName: 'Roku',
        enName: 'Six',
        itemSound: 'sounds/numbers/number_six_sound.mp3'),
    ItemModel(
        itemImage: 'assets/images/numbers/number_seven.png',
        jbName: 'Shichi',
        enName: 'Seven',
        itemSound: 'sounds/numbers/number_seven_sound.mp3'),
    ItemModel(
        itemImage: 'assets/images/numbers/number_eight.png',
        jbName: 'Hachi',
        enName: 'Eight',
        itemSound: 'sounds/numbers/number_eight_sound.mp3'),
    ItemModel(
        itemImage: 'assets/images/numbers/number_nine.png',
        jbName: 'Kyu',
        enName: 'Nine',
        itemSound: 'sounds/numbers/number_nine_sound.mp3'),
    ItemModel(
        itemImage: 'assets/images/numbers/number_ten.png',
        jbName: 'Ju',
        enName: 'Ten',
        itemSound: 'sounds/numbers/number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF4C6E81),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Numbers',
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ItemOfPage(
            item: listOfNumber[index],
            colorOne: const Color(0XFF4C6E81),
            colorTwo: const Color(0XFF8E9EAB),
          );
        },
        itemCount: listOfNumber.length,
      ),
    );
  }
}

// List<ItemNumbersPage> getList(List listOfNumber) {
//   List<ItemNumbersPage> itemList = [];
//   for (int i = 0; i < listOfNumber.length; i++) {
//     itemList.add(ItemNumbersPage(item: listOfNumber[i]));
//   }
//   return itemList;
// }
