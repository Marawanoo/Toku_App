import 'package:flutter/material.dart';

class ItemHomePage extends StatelessWidget {
  const ItemHomePage(
      {super.key,
      required this.categoryTitle,
      required this.categoryColor,
      required this.onTap});
  final String categoryTitle;
  final Color categoryColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: categoryColor,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
        child: Text(
          categoryTitle,
          style: const TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
