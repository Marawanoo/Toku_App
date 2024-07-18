import 'package:flutter/material.dart';
import 'package:tuko/components/item_home_page.dart';
import 'package:tuko/screens/color_page.dart';
import 'package:tuko/screens/family_page.dart';
import 'package:tuko/screens/numbers_page.dart';
import 'package:tuko/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF7AACB3),
        title: const Center(
          child: Text(
            'Toku',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
      ),
      body: Column(
        children: [
          ItemHomePage(
            categoryTitle: 'Numbers',
            categoryColor: const Color(0XFF4C6E81),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumbersPage();
              }));
            },
          ),
          ItemHomePage(
            categoryTitle: 'Family Members',
            categoryColor: const Color(0XFFCF8DA7),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyPage();
              }));
            },
          ),
          ItemHomePage(
            categoryTitle: 'Colors',
            categoryColor: const Color(0XFFAA5377),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorPage();
              }));
            },
          ),
          ItemHomePage(
            categoryTitle: 'Phrases',
            categoryColor: const Color(0XFF3B3759),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PhrasesPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}
