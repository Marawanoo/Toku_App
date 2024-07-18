import 'package:flutter/material.dart';
import 'package:tuko/components/item_of_page.dart';

import 'package:tuko/models/item_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemModel> listOfNumber = const [
    ItemModel(
        jbName: 'Kōdoku suru koto ',
        enName: 'Don\'t Forget To Subscribe',
        itemSound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    ItemModel(
        jbName: 'KKimasu ka',
        enName: 'Are You Coming',
        itemSound: 'sounds/phrases/are_you_coming.wav'),
    ItemModel(
        jbName: 'Go kibun wa ikagadesu ka',
        enName: 'How are You Feeling',
        itemSound: 'sounds/phrases/how_are_you_feeling.wav'),
    ItemModel(
        jbName: 'Watashi wa anime ga daisukidesu',
        enName: 'I Love Anime',
        itemSound: 'sounds/phrases/i_love_anime.wav'),
    ItemModel(
        jbName: 'Kōdoku suru koto o ',
        enName: 'I Love Programming',
        itemSound: 'sounds/phrases/i_love_programming.wav'),
    ItemModel(
        jbName: 'Puroguramingu wa kantandesu',
        enName: 'Programming is Easy',
        itemSound: 'sounds/phrases/programming_is_easy.wav'),
    ItemModel(
        jbName: 'Kōdoku suru koto o ',
        enName: 'What is Your Name',
        itemSound: 'sounds/phrases/what_is_your_name.wav'),
    ItemModel(
        jbName: 'Doko ni iku no',
        enName: 'Where are You Going',
        itemSound: 'sounds/phrases/where_are_you_going.wav'),
    ItemModel(
        jbName: 'Hai, kimasu',
        enName: 'yes, I\'am coming',
        itemSound: 'sounds/phrases/yes_im_coming.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF3B3759),
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
            colorOne: const Color(0XFF3a6186),
            colorTwo: const Color(0XFF89253e),
          );
        },
        itemCount: listOfNumber.length,
      ),
    );
  }
}
