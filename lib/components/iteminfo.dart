import 'package:flutter/material.dart';
import 'package:toku_project/models/itemmodel.dart';

class ItemInfo extends StatelessWidget {
  ItemInfo({super.key, required this.iteminfo});

  final ItemModel iteminfo;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                iteminfo.jpName,
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                iteminfo.enName,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
        const Spacer(),
        Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {
                iteminfo.playSound();
              },
              icon: const Icon(
                Icons.play_arrow,
                size: 30,
                color: Colors.white,
              ),
            )),
      ],
    );
  }
}
