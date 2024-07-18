import 'package:flutter/material.dart';
import 'package:tuko/models/item_model.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Padding(padding: EdgeInsets.only(left: 230)),
          Text(
            item.jbName,
            style: const TextStyle(fontSize: 15, color: Colors.white),
          ),
          Text(
            item.enName,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ]),
        const Spacer(),
        IconButton(
          onPressed: () {
            item.playSound();
          },
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        ),
        const Padding(padding: EdgeInsets.only(right: 30))
      ],
    );
  }
}
