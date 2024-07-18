import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tuko/components/item_info.dart';
import 'package:tuko/models/item_model.dart';

class ItemOfPage extends StatelessWidget {
  const ItemOfPage(
      {super.key,
      required this.item,
      required this.colorOne,
      required this.colorTwo});
  final ItemModel item;
  final Color colorOne;
  final Color colorTwo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [colorOne, colorTwo])),
      child: Row(
        children: [
          item.itemImage == null
              ? const SizedBox()
              : Image.asset(
                  item.itemImage!,
                  width: 100,
                ),
          Expanded(child: ItemInfo(item: item))
        ],
      ),
    );
  }
}
