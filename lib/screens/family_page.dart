import 'package:flutter/material.dart';
import 'package:tuko/components/item_of_page.dart';

import 'package:tuko/models/item_model.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  final List<ItemModel> listOfNumber = const [
    ItemModel(
        itemImage: 'assets/images/family_members/family_grandfather.png',
        jbName: 'Sofu',
        enName: 'Grandfather',
        itemSound: 'sounds/family_members/grand father.wav'),
    ItemModel(
        itemImage: 'assets/images/family_members/family_grandmother.png',
        jbName: 'Sobo',
        enName: 'Grandmother',
        itemSound: 'sounds/family_members/grand mother.wav'),
    ItemModel(
        itemImage: 'assets/images/family_members/family_father.png',
        jbName: 'Chichi',
        enName: 'Father',
        itemSound: 'sounds/family_members/father.wav'),
    ItemModel(
        itemImage: 'assets/images/family_members/family_mother.png',
        jbName: 'Haha',
        enName: 'Mother',
        itemSound: 'sounds/family_members/mother.wav'),
    ItemModel(
        itemImage: 'assets/images/family_members/family_son.png',
        jbName: 'Musuko',
        enName: 'Son',
        itemSound: 'sounds/family_members/son.wav'),
    ItemModel(
        itemImage: 'assets/images/family_members/family_daughter.png',
        jbName: 'Musume',
        enName: 'Daughter',
        itemSound: 'sounds/family_members/daughter.wav'),
    ItemModel(
        itemImage: 'assets/images/family_members/family_older_brother.png',
        jbName: 'Ani',
        enName: 'Older Brother',
        itemSound: 'sounds/family_members/older brother.wav'),
    ItemModel(
        itemImage: 'assets/images/family_members/family_older_sister.png',
        jbName: 'ane',
        enName: 'Older Sister',
        itemSound: 'sounds/family_members/older sister.wav'),
    ItemModel(
        itemImage: 'assets/images/family_members/family_younger_brother.png',
        jbName: 'otooto',
        enName: 'younger Brother',
        itemSound: 'sounds/family_members/younger brother.wav'),
    ItemModel(
        itemImage: 'assets/images/family_members/family_younger_sister.png',
        jbName: 'imooto',
        enName: 'younger Sister',
        itemSound: 'sounds/family_members/younger sister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFCF8DA7),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Family Members',
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ItemOfPage(
            item: listOfNumber[index],
            colorOne: const Color(0XFF6c5b7b),
            colorTwo: const Color(0xffc06c84),
          );
        },
        itemCount: listOfNumber.length,
      ),
    );
  }
}
